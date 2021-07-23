import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'failures.dart';

Either<AuthValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(AuthValueFailure.invalidEmail(failedValue: input));
  }
}

Either<AuthValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(AuthValueFailure.shortPassword(failedValue: input));
  }
}

Either<NotesValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(NotesValueFailure.exceeddingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<NotesValueFailure<String>, String> validateStringEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(const NotesValueFailure.isEmpty());
  }
}

Either<NotesValueFailure<String>, String> validateSingleLine(String input) {
  if (!input.contains("\n")) {
    return right(input);
  } else {
    return left(NotesValueFailure.multiline(failedValue: input));
  }
}

Either<NotesValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
    KtList<T> input, int maxLength) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(NotesValueFailure.toDoListTooLong(
      failedValue: input,
      max: maxLength,
    ));
  }
}
