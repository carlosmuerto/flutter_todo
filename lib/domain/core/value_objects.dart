import 'package:dartz/dartz.dart';
import 'package:flutter_todo/domain/core/errors.dart';
import 'package:meta/meta.dart';

import 'failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  bool get isValid => value.isRight();

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() => value.fold((f) => throw UnexpectedValueError(f), id);
  // id = identity = (r) => (r)

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
