import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_todo/application/notes/note_form/note_form_cubit.dart';
import 'package:flutter_todo/domain/notes/value_objects.dart';
import 'package:flutter_todo/presentation/notes/note_form/primitives/todo_item_primitive.dart';
import 'package:flutter_todo/tools/extension.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // skiped Want longer list action bar
    return Consumer<FormTodos>(
      builder: (context, formTodos, child) => ListView.builder(
        shrinkWrap: true,
        itemCount: formTodos.value.size,
        itemBuilder: (contxt, index) => TodoTile(
          index,
          key: ValueKey(context.formTodos[index].id),
        ),
      ),
    );
  }
}

class TodoTile extends HookWidget {
  final int index;
  const TodoTile(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo = context.formTodos.getOrElse(
      index,
      (_) => TodoItemPrimitive.empty(),
    );
    final textEditingController = useTextEditingController(text: todo.name);
    return Slidable(
      actionPane: const SlidableBehindActionPane(),
      actionExtentRatio: 0.15,
      secondaryActions: [
        IconSlideAction(
          caption: context.s.delete,
          icon: Icons.delete,
          color: Colors.red,
          onTap: () {
            context.formTodos = context.formTodos.minusElement(todo);
            context.read<NoteFormCubit>().changeTodo(context.formTodos);
          },
        ),
      ],
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 2,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey)),
        child: ListTile(
          leading: Checkbox(
            value: todo.done,
            onChanged: (value) {
              context.formTodos = context.formTodos.map(
                (listTodo) => todo == listTodo
                    ? todo.copyWith(
                        done: value ?? todo.done,
                      )
                    : listTodo,
              );
              context.read<NoteFormCubit>().changeTodo(context.formTodos);
            },
          ),
          title: TextFormField(
            controller: textEditingController,
            decoration: InputDecoration(
              hintText: context.s.todo,
              counterText: "",
              border: InputBorder.none,
            ),
            maxLength: TodoName.maxLength,
            onChanged: (value) {
              context.formTodos = context.formTodos.map(
                (listTodo) => todo == listTodo
                    ? todo.copyWith(
                        name: value,
                      )
                    : listTodo,
              );
              context.read<NoteFormCubit>().changeTodo(context.formTodos);
            },
            validator: (_) => context
                .read<NoteFormCubit>()
                .state
                .note
                .todos
                .value
                .fold(
                  (f) => null,
                  (todoList) => todoList[index].name.value.fold(
                        (f) => f.map(
                          exceeddingLength: (_) => context.s.exceeddingLength(
                            TodoName.maxLength,
                          ),
                          isEmpty: (_) => context.s.cannotBeEmpty,
                          multiline: (_) => context.s.onlyOneLine,
                          toDoListTooLong: (_) => context.s.todosListMaxed(
                            context
                                .read<NoteFormCubit>()
                                .state
                                .note
                                .todos
                                .maxLength,
                          ),
                        ),
                        (_) => null,
                      ),
                ),
          ),
        ),
      ),
    );
  }
}
