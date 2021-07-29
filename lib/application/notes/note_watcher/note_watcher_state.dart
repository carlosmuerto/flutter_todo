part of 'note_watcher_cubit.dart';

@freezed
class NoteWatcherState with _$NoteWatcherState {
  const factory NoteWatcherState.initial() = _Initial;
  const factory NoteWatcherState.loadInprogress() = _LoadInprogress;
  const factory NoteWatcherState.loadSuccess(KtList<Note> notes) = _LoadSuccess;
  const factory NoteWatcherState.loadFailure(NoteFailure noteFailure) =
      _LoadFailure;
}
