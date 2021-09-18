import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_todo/generated/l10n.dart';
import 'package:flutter_todo/presentation/notes/note_form/primitives/todo_item_primitive.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

extension PowerString on String {
  String getFirstsNWords(int wordCounts) =>
      split(" ").sublist(0, wordCounts).join(" ");
}

extension OptionX<A> on Option<A> {
  Option<A> ifNoneThen(Option<A> next) => isNone() ? next : this;
  Option<A> orElseThen(Option<A> next) => orElse(() => next);
}

extension BuildContextX on BuildContext {
  S get s => S.of(this);
  KtList<TodoItemPrimitive> get formTodos =>
      Provider.of<FormTodos>(this, listen: false).value;
  set formTodos(KtList<TodoItemPrimitive> value) =>
      Provider.of<FormTodos>(this, listen: false).value = value;
}

const doNoting = _doNotingFunction;

Object? _doNotingFunction() => doNoting;
