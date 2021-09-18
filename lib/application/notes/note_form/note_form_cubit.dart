import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/notes/i_note_repository.dart';
import '../../../domain/notes/note.dart';
import '../../../domain/notes/note_failure.dart';
import '../../../domain/notes/value_objects.dart';
import '../../../presentation/notes/note_form/primitives/todo_item_primitive.dart';

part 'note_form_cubit.freezed.dart';
part 'note_form_state.dart';

@injectable
class NoteFormCubit extends Cubit<NoteFormState> {
  final INoteRepository _noteRepository;
  NoteFormCubit(this._noteRepository) : super(NoteFormState.initial());

  void initialize(Option<Note> noteOption) => emit(noteOption.fold(
      () => state, //nothing change
      (note) => state.copyWith(note: note, isEditing: true)));

  void changeBody(String bodyIn) => emit(state.copyWith(
        note: state.note.copyWith(body: NoteBody(bodyIn)),
        saveFailureOrSuccessOption: none(),
      ));

  void changeColor(Color colorIn) => emit(state.copyWith(
        note: state.note.copyWith(
          color: NoteColor(colorIn),
        ),
        saveFailureOrSuccessOption: none(),
      ));

  void changeTodo(KtList<TodoItemPrimitive> todos) => emit(state.copyWith(
        note: state.note.copyWith(
            todos: FixedList(todos.map((primitive) => primitive.toDomain()))),
        saveFailureOrSuccessOption: none(),
      ));

  Future<void> save() async {
    Either<NoteFailure, Unit>? failureOrSuccess;
    emit(state.copyWith(
      isSaving: true,
      saveFailureOrSuccessOption: none(),
    ));

    if (state.note.failureOption.isNone()) {
      failureOrSuccess = state.isEditing
          ? await _noteRepository.update(state.note)
          : await _noteRepository.create(state.note);
    }

    /*
    final failureOrSuccess = await state.note.failureOption.fold(
      () => state.isEditing
          ? _noteRepository.update(state.note)
          : _noteRepository.create(state.note),
      (noteF) async => some(
        NoteFailure.unexpected(
          message: noteF.toString(),
        ),
      ),
    );
    */

    emit(
      state.copyWith(
        isSaving: false,
        showErrors: true,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
