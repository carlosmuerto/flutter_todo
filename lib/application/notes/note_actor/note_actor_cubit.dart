import 'package:bloc/bloc.dart';
import 'package:flutter_todo/domain/notes/i_note_repository.dart';
import 'package:flutter_todo/domain/notes/note.dart';
import 'package:flutter_todo/domain/notes/note_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'note_actor_state.dart';
part 'note_actor_cubit.freezed.dart';

@injectable
class NoteActorCubit extends Cubit<NoteActorState> {
  final INoteRepository _noteRepository;
  NoteActorCubit(this._noteRepository) : super(const NoteActorState.initial());

  void deleteNote(Note note) {
    emit(const NoteActorState.actionInprogress());
    _noteRepository.delete(note).then((successOrFailure) {
      emit(
        successOrFailure.fold(
          (f) => NoteActorState.deleteFailure(f),
          (_) => const NoteActorState.deleteSuccess(),
        ),
      );
    });
  }
}
