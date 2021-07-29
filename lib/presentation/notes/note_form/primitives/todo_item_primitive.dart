import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/notes/todo_item.dart';
import '../../../../domain/notes/value_objects.dart';

part 'todo_item_primitive.freezed.dart';

@freezed
class TodoItemPrimitive with _$TodoItemPrimitive {
  const factory TodoItemPrimitive({
    required String name,
    required bool done,
  }) = _TodoItemPrimitive;
  const TodoItemPrimitive._();

  factory TodoItemPrimitive.empty() => const TodoItemPrimitive(
        name: '',
        done: false,
      );

  factory TodoItemPrimitive.fromDomain(TodoItem todoItem) => TodoItemPrimitive(
        name: todoItem.name.getOrCrash(),
        done: todoItem.done,
      );

  TodoItem toDomain() => TodoItem(
        name: TodoName(name),
        done: done,
      );
}
