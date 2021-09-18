import 'package:flutter/widgets.dart';
import 'package:flutter_todo/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../../domain/notes/todo_item.dart';
import '../../../../domain/notes/value_objects.dart';

part 'todo_item_primitive.freezed.dart';

class FormTodos extends ValueNotifier<KtList<TodoItemPrimitive>> {
  FormTodos(KtList<TodoItemPrimitive>? todosPrim)
      : super(todosPrim ?? emptyList<TodoItemPrimitive>());
}

@freezed
class TodoItemPrimitive with _$TodoItemPrimitive {
  const factory TodoItemPrimitive({
    required String id,
    required String name,
    required bool done,
  }) = _TodoItemPrimitive;
  const TodoItemPrimitive._();

  factory TodoItemPrimitive.empty() => TodoItemPrimitive(
        id: UniqueId.create().getOrCrash(),
        name: '',
        done: false,
      );

  factory TodoItemPrimitive.fromDomain(TodoItem todoItem) => TodoItemPrimitive(
        id: todoItem.id.getOrCrash(),
        name: todoItem.name.getOrCrash(),
        done: todoItem.done,
      );

  TodoItem toDomain() => TodoItem(
        id: UniqueId.fromString(id),
        name: TodoName(name),
        done: done,
      );
}
