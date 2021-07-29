import 'package:dartz/dartz.dart';
import 'package:flutter_todo/domain/auth/value_objects.dart';
import 'package:flutter_todo/domain/core/failures.dart';
import 'package:flutter_todo/domain/notes/todo_item.dart';
import 'package:flutter_todo/domain/notes/value_objects.dart';
import 'package:flutter_todo/tools/extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'note.freezed.dart';

@freezed
class Note with _$Note {
  factory Note({
    required UniqueId id,
    required NoteBody body,
    required NoteColor color,
    required FixedList<TodoItem> todos,
  }) = _Note;

  factory Note.empty({int? maxTodos}) => Note(
        id: UniqueId.create(),
        body: NoteBody.empty(),
        color: NoteColor.initial(),
        todos: FixedList.empty(maxTodos),
      );

  Note._();

  Option<ValueFailure> get failureOption => this
      .id
      .failureOption
      .orElseThen(body.failureOption)
      .orElseThen(color.failureOption)
      .orElseThen(todos.failureOption)
      .orElseThen(todos
              .getOrCrash()
              .map((todoItem) => todoItem.failureOption)
              .filter((fo) => fo.isSome())
              .firstOrNull() ??
          none());
}
