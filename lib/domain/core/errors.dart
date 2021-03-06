import 'package:flutter_todo/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = "Encountered a ValueFailure at an Unrecoverable point";
    return Error.safeToString("$explanation Failure was: $valueFailure");
  }
}

class NotAuthenticatedError extends Error {
  @override
  String toString() {
    return Error.safeToString("Not Authenticated");
  }
}
