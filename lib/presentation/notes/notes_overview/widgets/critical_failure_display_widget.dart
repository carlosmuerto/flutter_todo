import 'package:flutter/material.dart';
import 'package:flutter_todo/domain/notes/note_failure.dart';
import 'package:flutter_todo/tools/extension.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final NoteFailure _failure;
  const CriticalFailureDisplay(this._failure, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "😱",
              style: TextStyle(fontSize: 100),
            ),
            Text(
              _failure.maybeMap(
                permissionDenied: (e) =>
                    "${context.s.permissionDenied}\n${context.s.pelaseContactSupport}",
                orElse: () =>
                    "${context.s.unexpected}\n${context.s.pelaseContactSupport}",
              ),
              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            TextButton(
                onPressed: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  //mainAxisAlignment: Main,
                  children: [
                    const Icon(Icons.mail),
                    //const SizedBox(width: 4),
                    Text(context.s.iNeedHelp),
                  ],
                )),
          ],
        ),
      );
}
