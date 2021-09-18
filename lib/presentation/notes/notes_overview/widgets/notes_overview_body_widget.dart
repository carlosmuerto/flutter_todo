import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/application/notes/note_watcher/note_watcher_cubit.dart';
import 'package:flutter_todo/domain/notes/note.dart';
import 'package:kt_dart/collection.dart';

import 'critical_failure_display_widget.dart';
import 'error_note_card_widget.dart';
import 'note_card_widget.dart';

class NotesOverviewBody extends StatelessWidget {
  const NotesOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherCubit, NoteWatcherState>(
      builder: (context, state) {
        return state.when(
          initial: _initialWidget,
          loadInprogress: () => _loadInprogressWidget(context),
          loadSuccess: (notes, _) => _loadSuccessWidget(context, notes),
          loadFailure: (failure) => CriticalFailureDisplay(failure),
        );
      },
    );
  }

  Widget _initialWidget() => Container();

  Widget _loadInprogressWidget(BuildContext context) => const Center(
        child: CircularProgressIndicator(),
      );

  Widget _loadSuccessWidget(BuildContext context, KtList<Note> notes) =>
      ListView.builder(
        itemBuilder: (context, index) => notes[index].failureOption.fold(
              () => NoteCard(notes[index]),
              (failure) => ErrorNoteCard(notes[index]),
            ),
        itemCount: notes.size,
      );
}
