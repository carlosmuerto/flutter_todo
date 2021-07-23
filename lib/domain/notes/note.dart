import 'package:dartz/dartz.dart';
import 'package:flutter_todo/domain/auth/value_objects.dart';
import 'package:flutter_todo/domain/core/failures.dart';
import 'package:flutter_todo/domain/notes/todo_item.dart';
import 'package:flutter_todo/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note.freezed.dart';

@freezed
class Note with _$Note {
  const factory Note({
    required UniqueId id,
    required NoteBody body,
    required NoteColor color,
    required FixedList<TodoItem> todo,
  }) = _Note;

  factory Note.empty({int? maxTodos}) => Note(
        id: UniqueId.create(),
        body: NoteBody.empty(),
        color: NoteColor.initial(),
        todo: FixedList.empty(maxTodos),
      );

  Note._();

  Option<ValueFailure> get failureOption {
    return this
        .id
        .failureOption
        .andThen(body.failureOption)
        .andThen(color.failureOption)
        .andThen(
          //TODO: check if realy works
          //from all "to do"s get Or Crash the app
          todo
                  .getOrCrash()
                  // convert on iterable because Ktlist dont have
                  .iter
                  // for each todoItem get its failure Option
                  .map((todoItem) => todoItem.failureOption)
                  // and take only that have some failure
                  .where((o) => o.isSome())
                  // and return it first failure
                  .firstOrNull ??
              // if no failure all is OK return none
              none(),
        );
  }
}
