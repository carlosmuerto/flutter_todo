import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_todo/domain/notes/i_note_repository.dart';
import 'package:flutter_todo/domain/notes/note.dart';
import 'package:flutter_todo/domain/notes/note_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'note_watcher_state.dart';
part 'note_watcher_cubit.freezed.dart';

@injectable
class NoteWatcherCubit extends Cubit<NoteWatcherState> {
  final INoteRepository _noteRepository;

  StreamSubscription<Either<NoteFailure, KtList<Note>>>?
      _notesStreamSubscription;

  NoteWatcherCubit(this._noteRepository)
      : super(
          const NoteWatcherState.initial(),
        );

  Future<void> watchAll() async {
    emit(const NoteWatcherState.loadInprogress());
    await _notesStreamSubscription?.cancel();
    _notesStreamSubscription = _noteRepository
        .watchAll()
        .listen((failureOrNotes) => _receiveNotes(failureOrNotes));
  }

  Future<void> watchUncompleted() async {
    emit(const NoteWatcherState.loadInprogress());
    await _notesStreamSubscription?.cancel();
    _notesStreamSubscription = _noteRepository
        .watchUncompleted()
        .listen((failureOrNotes) => _receiveNotes(failureOrNotes));
  }

  void _receiveNotes(
    Either<NoteFailure, KtList<Note>> failureOrNotes,
  ) {
    emit(
      failureOrNotes.fold(
        (noteFailure) => NoteWatcherState.loadFailure(noteFailure),
        (notes) => NoteWatcherState.loadSuccess(notes),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _notesStreamSubscription?.cancel();
    return super.close();
  }
}
