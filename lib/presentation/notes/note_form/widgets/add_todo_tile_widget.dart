import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/application/notes/note_form/note_form_cubit.dart';
import 'package:flutter_todo/presentation/notes/note_form/primitives/todo_item_primitive.dart';
import 'package:flutter_todo/tools/extension.dart';
import 'package:kt_dart/collection.dart';

class AddTodoTile extends StatelessWidget {
  const AddTodoTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormCubit, NoteFormState>(
      buildWhen: (p, c) =>
          p.note.todos.length != c.note.todos.length ||
          (p.note.todos.isfull != c.note.todos.isfull),
      builder: (context, state) {
        return ListTile(
          enabled: !state.note.todos.isfull,
          title: Text(
            state.note.todos.isfull
                ? context.s.todosListMaxed(state.note.todos.maxLength)
                : context.s.addATodo(
                    state.note.todos.length,
                    state.note.todos.maxLength,
                  ),
          ),
          leading: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(Icons.add),
          ),
          onTap: () {
            context.formTodos = context.formTodos.plusElement(
              TodoItemPrimitive.empty(),
            );
            context.read<NoteFormCubit>().changeTodo(context.formTodos);
          },
        );
      },
    );
  }
}
