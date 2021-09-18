import 'package:dartz/dartz.dart';
import 'package:flutter_todo/domain/auth/value_objects.dart';
import 'package:flutter_todo/domain/core/failures.dart';
import 'package:flutter_todo/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item.freezed.dart';

@freezed
class TodoItem with _$TodoItem {
  const factory TodoItem({
    required UniqueId id,
    required TodoName name,
    required bool done,
  }) = _TodoItem;

  factory TodoItem.empty() => TodoItem(
        id: UniqueId.create(),
        name: TodoName.empty(),
        done: false,
      );

  const TodoItem._();

  Option<ValueFailure> get failureOption => name.failureOption;
}
