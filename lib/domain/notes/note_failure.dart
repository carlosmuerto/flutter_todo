import 'package:flutter_todo/domain/core/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_failure.freezed.dart';

@freezed
class NoteFailure extends ValueFailure with _$NoteFailure {
  const factory NoteFailure.unexpected(
      {@Default("unexpected") String message}) = _Unexpected;
  const factory NoteFailure.unableToUpdate() = _UnableToUpdate;
  const factory NoteFailure.permissionDenied() = _PermissionDenied;
}
