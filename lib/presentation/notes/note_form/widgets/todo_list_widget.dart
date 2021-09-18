import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_todo/application/notes/note_form/note_form_cubit.dart';
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
        itemBuilder: (contxt, index) => TodoTile(index),
      ),
    );
  }
}

class TodoTile extends HookWidget {
  final int index;
  const TodoTile(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo =
        context.formTodos.getOrElse(index, (_) => TodoItemPrimitive.empty());
    return ListTile(
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
    );
  }
}
