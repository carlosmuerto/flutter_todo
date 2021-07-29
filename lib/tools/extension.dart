import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_todo/generated/l10n.dart';

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
}

const doNoting = _doNotingFunction;

Object? _doNotingFunction() => doNoting;
