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
      NoteDto.fromJson(doc.data()!..addAll({"id": doc.id}));
}

class ServerTimeStampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimeStampConverter();
  @override
  FieldValue fromJson(Object json) => FieldValue.serverTimestamp();

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

@freezed
class TodoItemDto with _$TodoItemDto {
  const factory TodoItemDto({
    @JsonKey(name: 'name') required String name,
    required bool done,
  }) = _TodoItemDto;

  const TodoItemDto._();

  factory TodoItemDto.fromDomain(TodoItem todoItem) => TodoItemDto(
        name: todoItem.name.getOrCrash(),
        done: todoItem.done,
      );

  TodoItem toDomain() => TodoItem(
        name: TodoName(name),
        done: done,
      );

  factory TodoItemDto.fromJson(Map<String, dynamic> json) =>
      _$TodoItemDtoFromJson(json);
}
