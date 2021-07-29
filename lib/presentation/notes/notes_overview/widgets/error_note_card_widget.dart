import 'package:flutter/material.dart';
import 'package:flutter_todo/domain/notes/note.dart';
import 'package:flutter_todo/tools/extension.dart';

class ErrorNoteCard extends StatelessWidget {
  final Note _note;
  const ErrorNoteCard(this._note, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Card(
        color: Theme.of(context).errorColor,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              Text(
                "${context.s.invalidNote}, ${context.s.pelaseContactSupport}",
                style: Theme.of(context).primaryTextTheme.bodyText2?.copyWith(
                      fontSize: 18,
                    ),
              ),
              const SizedBox(height: 2),
              Text(
                context.s.detailsForNerds,
                style: Theme.of(context).primaryTextTheme.bodyText2,
              ),
              Text(
                _note.failureOption.fold(
                  () => context.s.imposibleError,
                  (f) => f.toString(),
                ),
                style: Theme.of(context).primaryTextTheme.bodyText2,
              ),
            ],
          ),
        ),
      );
}
