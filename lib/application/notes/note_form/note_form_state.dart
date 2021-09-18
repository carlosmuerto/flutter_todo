part of 'note_form_cubit.dart';

@freezed
class NoteFormState with _$NoteFormState {
  factory NoteFormState({
    required Note note,
    required bool showErrors,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption,
  }) = _NoteFormState;

  factory NoteFormState.initial({int? maxTodos}) => NoteFormState(
        note: Note.empty(maxTodos: maxTodos),
        showErrors: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
