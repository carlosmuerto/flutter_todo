import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'failures.freezed.dart';

abstract class ValueFailure {}
/*
//in case of multiple sourtce failure
@freezed
abstract class MultValueFailure<T> with _$MultValueFailure<T> {
  const factory MultValueFailure.auth(AuthValueFailure<T> af) = _Auth<T>;
  const factory MultValueFailure.notes(NotesValueFailure<T> nf) = _Notes<T>;
}
*/

@freezed
abstract class AuthValueFailure<T> extends ValueFailure
    with _$AuthValueFailure<T> {
  const factory AuthValueFailure.invalidEmail({
    required T failedValue,
  }) = _InvalidEmail<T>;
  const factory AuthValueFailure.shortPassword({
    required T failedValue,
  }) = _ShortPassword<T>;
}

@freezed
abstract class NotesValueFailure<T> extends ValueFailure
    with _$NotesValueFailure<T> {
  const factory NotesValueFailure.exceeddingLength({
    required T failedValue,
    required int max,
  }) = _ExceeddingLength<T>;
  const factory NotesValueFailure.isEmpty() = _IsEmpty<T>;
  const factory NotesValueFailure.multiline({
    required T failedValue,
  }) = _Mumtiline<T>;
  const factory NotesValueFailure.toDoListTooLong({
    required T failedValue,
    required int max,
  }) = _ToDoListTooLong<T>;
}
