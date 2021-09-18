import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/application/notes/note_actor/note_actor_cubit.dart';
import 'package:flutter_todo/domain/notes/note.dart';
import 'package:flutter_todo/presentation/notes/note_form/primitives/todo_item_primitive.dart';
import 'package:flutter_todo/presentation/routes/router.gr.dart';
import 'package:kt_dart/collection.dart';
import 'package:flutter_todo/generated/l10n.dart';

class NoteCard extends StatelessWidget {
  final Note _note;
  const NoteCard(this._note, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _note.color.getOrCrash(),
      child: InkWell(
        onTap: () {
          context.router.push(NoteFormRoute(editedNote: _note));
        },
        onLongPress: () {
          _showDeletionDialog(context, context.read<NoteActorCubit>());
        },
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _note.body.getOrCrash(),
                style: TextStyle(
                  fontSize: 18,
                  color: _note.color.getOrCrash().computeLuminance() > 0.5
                      ? Colors.black
                      : Colors.white,
                ),
              ),
              if (!_note.todos.isEmpty) ...[
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Wrap(
                    spacing: 8,
                    children: _note.todos
                        .getOrCrash()
                        .map(
                          (todoItem) => TodoDisplay(
                            TodoItemPrimitive.fromDomain(todoItem),
                            _note.color.getOrCrash(),
                          ),
                        )
                        .asList(),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  void _showDeletionDialog(
    BuildContext context,
    NoteActorCubit noteActorCubit,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(S.of(context).selectedNote),
        content: Text(
          _note.body.getOrCrash(),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          TextButton(
            onPressed: () => context.router.pop(),
            child: Text(S.of(context).cancel.toUpperCase()),
          ),
          TextButton(
            onPressed: () {
              context.router.pop();
              noteActorCubit.deleteNote(_note);
            },
            child: Text(S.of(context).delete.toUpperCase()),
          ),
        ],
      ),
    );
  }
}

class TodoDisplay extends StatelessWidget {
  final TodoItemPrimitive _todoItem;
  final Color _noteColor;
  const TodoDisplay(
    this._todoItem,
    this._noteColor, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_todoItem.done)
            Container(
              margin: const EdgeInsets.only(right: 4),
              child: Icon(
                Icons.check_box,
                color: _noteColor.computeLuminance() > 0.5
                    ? Theme.of(context).accentColor
                    : Colors.white,
              ),
            )
          else
            Container(
              margin: const EdgeInsets.only(right: 4),
              child: Icon(
                Icons.check_box_outline_blank,
                color: _noteColor.computeLuminance() > 0.5
                    ? Theme.of(context).accentColor
                    : Colors.white,
              ),
            ),
          Text(
            _todoItem.name,
            style: TextStyle(
              fontSize: 18,
              color: _noteColor.computeLuminance() > 0.5
                  ? Colors.black
                  : Colors.white,
            ),
          ),
        ],
      );
}
