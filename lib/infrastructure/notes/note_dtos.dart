import 'dart:math' show max;
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_todo/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/notes/note.dart';
import '../../domain/notes/todo_item.dart';
import '../../domain/notes/value_objects.dart';

part 'note_dtos.freezed.dart';
part 'note_dtos.g.dart';

@freezed
class NoteDto with _$NoteDto {
  @JsonSerializable(explicitToJson: true)
  const factory NoteDto({
    required String id,
    required String body,
    required int color,
    required List<TodoItemDto> todos,
    @ServerTimeStampConverter() required FieldValue serverTimeStamp,
  }) = _NoteDto;

  const NoteDto._();

  factory NoteDto.formDomain(Note note) => NoteDto(
        id: note.id.getOrCrash(),
        body: note.body.getOrCrash(),
        color: note.color.getOrCrash().value,
        todos: note.todos
            .getOrCrash()
            .map((todoItem) => TodoItemDto.fromDomain(todoItem))
            .asList(),
        serverTimeStamp: FieldValue.serverTimestamp(),
      );

  Note toDomain() {
    return Note(
      id: UniqueId.fromString(id),
      body: NoteBody(body),
      color: NoteColor(Color(color)),
      todos: FixedList(
        todos.map((dto) => dto.toDomain()).toImmutableList(),
        maxLength: max(FixedList.defaultMaxLength, todos.length),
      ),
    );
  }

  factory NoteDto.fromJson(Map<String, dynamic> json) =>
      _$NoteDtoFromJson(json);

  factory NoteDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) =>
      NoteDto.fromJson(doc.data()!).copyWith(id: doc.id);
}

/*
class FixedListConverter
    implements
        JsonConverter<FixedList<TodoItemDto>, List<Map<String, dynamic>>> {
  const FixedListConverter();
  @override
  FixedList<TodoItemDto> fromJson(List<Map<String, dynamic>>? jsonList) =>
      FixedList<TodoItemDto>(
        KtList.from((jsonList ?? []).map((json) => TodoItemDto.fromJson(json))),
      );

  @override
  List<Map<String, dynamic>> toJson(FixedList<TodoItemDto> fixedList) {
    print("to json");
    return fixedList.getOrCrash().map((item) => item.toJson()).asList();
  }
}
*/
class ServerTimeStampConverter implements JsonConverter<FieldValue, Object?> {
  const ServerTimeStampConverter();
  @override
  FieldValue fromJson(Object? json) => FieldValue.serverTimestamp();

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

@freezed
class TodoItemDto with _$TodoItemDto {
  @JsonSerializable(explicitToJson: true)
  const factory TodoItemDto({
    required String id,
    @JsonKey(name: 'name') required String name,
    required bool done,
  }) = _TodoItemDto;

  const TodoItemDto._();

  factory TodoItemDto.fromDomain(TodoItem todoItem) => TodoItemDto(
        id: todoItem.id.getOrCrash(),
        name: todoItem.name.getOrCrash(),
        done: todoItem.done,
      );

  TodoItem toDomain() => TodoItem(
        id: UniqueId.fromString(id),
        name: TodoName(name),
        done: done,
      );

  factory TodoItemDto.fromJson(Map<String, dynamic> json) =>
      _$TodoItemDtoFromJson(json);
}
