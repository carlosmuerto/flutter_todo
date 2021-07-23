import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter_todo/domain/core/value_validators.dart';
import 'package:kt_dart/kt.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';

class NoteBody extends ValueObject<String> {
  static const int maxLength = 1000;

  @override
  final Either<NotesValueFailure<String>, String> value;

  factory NoteBody(String input) {
    return NoteBody._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringEmpty),
    );
  }

  factory NoteBody.empty() => NoteBody("");

  const NoteBody._(this.value);
}

class TodoName extends ValueObject<String> {
  static const int maxLength = 30;

  @override
  final Either<NotesValueFailure<String>, String> value;

  factory TodoName(String input) {
    return TodoName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringEmpty)
          .flatMap(validateSingleLine),
    );
  }

  factory TodoName.empty() => TodoName("");

  const TodoName._(this.value);
}

abstract class PredefineColors {
  static const canvas = Color(0x00fafafa); // full transparent canvas
  static const salmon = Color(0x00fa8072); // full transparent salmon
  static const mustard = Color(0x00fedc56); // full transparent mustard
  static const tea = Color(0x00d0f0c0); // full transparent tea
  static const flamingo = Color(0x00fca3b7); // full transparent flamingo
  static const tortilla = Color(0x00997950); // full transparent tortilla
  static const cream = Color(0x00fffdd0); // full transparent cream
}

class NoteColor extends ValueObject<Color> {
  @override
  final Either<NotesValueFailure<Color>, Color> value;

  factory NoteColor(Color input) {
    return NoteColor._(right(input.withOpacity(1)));
  }

  factory NoteColor.initial() => NoteColor(PredefineColors.canvas);

  const NoteColor._(this.value);
}

class FixedList<T> extends ValueObject<KtList<T>> {
  static const defaultMaxLength = 3;
  final int _maxLength;

  int get maxLength => _maxLength;

  int get length => value.getOrElse(() => emptyList()).size;

  bool get isfull => length == maxLength;

  @override
  final Either<NotesValueFailure<KtList<T>>, KtList<T>> value;

  factory FixedList(KtList<T> input, {int maxLength = defaultMaxLength}) {
    return FixedList._(
      validateMaxListLength(input, maxLength),
      maxLength,
    );
  }

  factory FixedList.empty([int? maxLength]) =>
      FixedList(emptyList<T>(), maxLength: maxLength ?? defaultMaxLength);

  const FixedList._(this.value, int maxLength) : _maxLength = maxLength;
}
