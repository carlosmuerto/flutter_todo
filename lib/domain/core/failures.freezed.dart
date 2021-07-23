// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthValueFailureTearOff {
  const _$AuthValueFailureTearOff();

  _InvalidEmail<T> invalidEmail<T>({required T failedValue}) {
    return _InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  _ShortPassword<T> shortPassword<T>({required T failedValue}) {
    return _ShortPassword<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $AuthValueFailure = _$AuthValueFailureTearOff();

/// @nodoc
mixin _$AuthValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthValueFailureCopyWith<T, AuthValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthValueFailureCopyWith<T, $Res> {
  factory $AuthValueFailureCopyWith(
          AuthValueFailure<T> value, $Res Function(AuthValueFailure<T>) then) =
      _$AuthValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  _$AuthValueFailureCopyWithImpl(this._value, this._then);

  final AuthValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(AuthValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class _$InvalidEmailCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory _$InvalidEmailCopyWith(
          _InvalidEmail<T> value, $Res Function(_InvalidEmail<T>) then) =
      __$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$InvalidEmailCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidEmailCopyWith<T, $Res> {
  __$InvalidEmailCopyWithImpl(
      _InvalidEmail<T> _value, $Res Function(_InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _InvalidEmail<T>));

  @override
  _InvalidEmail<T> get _value => super._value as _InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidEmail<T>
    with DiagnosticableTreeMixin
    implements _InvalidEmail<T> {
  const _$_InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthValueFailure<$T>.invalidEmail'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith =>
      __$InvalidEmailCopyWithImpl<T, _InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail<T> implements AuthValueFailure<T> {
  const factory _InvalidEmail({required T failedValue}) = _$_InvalidEmail<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShortPasswordCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory _$ShortPasswordCopyWith(
          _ShortPassword<T> value, $Res Function(_ShortPassword<T>) then) =
      __$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$ShortPasswordCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements _$ShortPasswordCopyWith<T, $Res> {
  __$ShortPasswordCopyWithImpl(
      _ShortPassword<T> _value, $Res Function(_ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as _ShortPassword<T>));

  @override
  _ShortPassword<T> get _value => super._value as _ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_ShortPassword<T>
    with DiagnosticableTreeMixin
    implements _ShortPassword<T> {
  const _$_ShortPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthValueFailure<$T>.shortPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$ShortPasswordCopyWith<T, _ShortPassword<T>> get copyWith =>
      __$ShortPasswordCopyWithImpl<T, _ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class _ShortPassword<T> implements AuthValueFailure<T> {
  const factory _ShortPassword({required T failedValue}) = _$_ShortPassword<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShortPasswordCopyWith<T, _ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NotesValueFailureTearOff {
  const _$NotesValueFailureTearOff();

  _ExceeddingLength<T> exceeddingLength<T>(
      {required T failedValue, required int max}) {
    return _ExceeddingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  _IsEmpty<T> isEmpty<T>() {
    return _IsEmpty<T>();
  }

  _Mumtiline<T> multiline<T>({required T failedValue}) {
    return _Mumtiline<T>(
      failedValue: failedValue,
    );
  }

  _ToDoListTooLong<T> toDoListTooLong<T>(
      {required T failedValue, required int max}) {
    return _ToDoListTooLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }
}

/// @nodoc
const $NotesValueFailure = _$NotesValueFailureTearOff();

/// @nodoc
mixin _$NotesValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceeddingLength,
    required TResult Function() isEmpty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue, int max) toDoListTooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceeddingLength,
    TResult Function()? isEmpty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue, int max)? toDoListTooLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceeddingLength<T> value) exceeddingLength,
    required TResult Function(_IsEmpty<T> value) isEmpty,
    required TResult Function(_Mumtiline<T> value) multiline,
    required TResult Function(_ToDoListTooLong<T> value) toDoListTooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceeddingLength<T> value)? exceeddingLength,
    TResult Function(_IsEmpty<T> value)? isEmpty,
    TResult Function(_Mumtiline<T> value)? multiline,
    TResult Function(_ToDoListTooLong<T> value)? toDoListTooLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesValueFailureCopyWith<T, $Res> {
  factory $NotesValueFailureCopyWith(NotesValueFailure<T> value,
          $Res Function(NotesValueFailure<T>) then) =
      _$NotesValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$NotesValueFailureCopyWithImpl<T, $Res>
    implements $NotesValueFailureCopyWith<T, $Res> {
  _$NotesValueFailureCopyWithImpl(this._value, this._then);

  final NotesValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(NotesValueFailure<T>) _then;
}

/// @nodoc
abstract class _$ExceeddingLengthCopyWith<T, $Res> {
  factory _$ExceeddingLengthCopyWith(_ExceeddingLength<T> value,
          $Res Function(_ExceeddingLength<T>) then) =
      __$ExceeddingLengthCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$ExceeddingLengthCopyWithImpl<T, $Res>
    extends _$NotesValueFailureCopyWithImpl<T, $Res>
    implements _$ExceeddingLengthCopyWith<T, $Res> {
  __$ExceeddingLengthCopyWithImpl(
      _ExceeddingLength<T> _value, $Res Function(_ExceeddingLength<T>) _then)
      : super(_value, (v) => _then(v as _ExceeddingLength<T>));

  @override
  _ExceeddingLength<T> get _value => super._value as _ExceeddingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(_ExceeddingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ExceeddingLength<T>
    with DiagnosticableTreeMixin
    implements _ExceeddingLength<T> {
  const _$_ExceeddingLength({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotesValueFailure<$T>.exceeddingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NotesValueFailure<$T>.exceeddingLength'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExceeddingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  _$ExceeddingLengthCopyWith<T, _ExceeddingLength<T>> get copyWith =>
      __$ExceeddingLengthCopyWithImpl<T, _ExceeddingLength<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceeddingLength,
    required TResult Function() isEmpty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue, int max) toDoListTooLong,
  }) {
    return exceeddingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceeddingLength,
    TResult Function()? isEmpty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue, int max)? toDoListTooLong,
    required TResult orElse(),
  }) {
    if (exceeddingLength != null) {
      return exceeddingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceeddingLength<T> value) exceeddingLength,
    required TResult Function(_IsEmpty<T> value) isEmpty,
    required TResult Function(_Mumtiline<T> value) multiline,
    required TResult Function(_ToDoListTooLong<T> value) toDoListTooLong,
  }) {
    return exceeddingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceeddingLength<T> value)? exceeddingLength,
    TResult Function(_IsEmpty<T> value)? isEmpty,
    TResult Function(_Mumtiline<T> value)? multiline,
    TResult Function(_ToDoListTooLong<T> value)? toDoListTooLong,
    required TResult orElse(),
  }) {
    if (exceeddingLength != null) {
      return exceeddingLength(this);
    }
    return orElse();
  }
}

abstract class _ExceeddingLength<T> implements NotesValueFailure<T> {
  const factory _ExceeddingLength({required T failedValue, required int max}) =
      _$_ExceeddingLength<T>;

  T get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ExceeddingLengthCopyWith<T, _ExceeddingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IsEmptyCopyWith<T, $Res> {
  factory _$IsEmptyCopyWith(
          _IsEmpty<T> value, $Res Function(_IsEmpty<T>) then) =
      __$IsEmptyCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$IsEmptyCopyWithImpl<T, $Res>
    extends _$NotesValueFailureCopyWithImpl<T, $Res>
    implements _$IsEmptyCopyWith<T, $Res> {
  __$IsEmptyCopyWithImpl(_IsEmpty<T> _value, $Res Function(_IsEmpty<T>) _then)
      : super(_value, (v) => _then(v as _IsEmpty<T>));

  @override
  _IsEmpty<T> get _value => super._value as _IsEmpty<T>;
}

/// @nodoc

class _$_IsEmpty<T> with DiagnosticableTreeMixin implements _IsEmpty<T> {
  const _$_IsEmpty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotesValueFailure<$T>.isEmpty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotesValueFailure<$T>.isEmpty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsEmpty<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceeddingLength,
    required TResult Function() isEmpty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue, int max) toDoListTooLong,
  }) {
    return isEmpty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceeddingLength,
    TResult Function()? isEmpty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue, int max)? toDoListTooLong,
    required TResult orElse(),
  }) {
    if (isEmpty != null) {
      return isEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceeddingLength<T> value) exceeddingLength,
    required TResult Function(_IsEmpty<T> value) isEmpty,
    required TResult Function(_Mumtiline<T> value) multiline,
    required TResult Function(_ToDoListTooLong<T> value) toDoListTooLong,
  }) {
    return isEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceeddingLength<T> value)? exceeddingLength,
    TResult Function(_IsEmpty<T> value)? isEmpty,
    TResult Function(_Mumtiline<T> value)? multiline,
    TResult Function(_ToDoListTooLong<T> value)? toDoListTooLong,
    required TResult orElse(),
  }) {
    if (isEmpty != null) {
      return isEmpty(this);
    }
    return orElse();
  }
}

abstract class _IsEmpty<T> implements NotesValueFailure<T> {
  const factory _IsEmpty() = _$_IsEmpty<T>;
}

/// @nodoc
abstract class _$MumtilineCopyWith<T, $Res> {
  factory _$MumtilineCopyWith(
          _Mumtiline<T> value, $Res Function(_Mumtiline<T>) then) =
      __$MumtilineCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$MumtilineCopyWithImpl<T, $Res>
    extends _$NotesValueFailureCopyWithImpl<T, $Res>
    implements _$MumtilineCopyWith<T, $Res> {
  __$MumtilineCopyWithImpl(
      _Mumtiline<T> _value, $Res Function(_Mumtiline<T>) _then)
      : super(_value, (v) => _then(v as _Mumtiline<T>));

  @override
  _Mumtiline<T> get _value => super._value as _Mumtiline<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_Mumtiline<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Mumtiline<T> with DiagnosticableTreeMixin implements _Mumtiline<T> {
  const _$_Mumtiline({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotesValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotesValueFailure<$T>.multiline'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Mumtiline<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$MumtilineCopyWith<T, _Mumtiline<T>> get copyWith =>
      __$MumtilineCopyWithImpl<T, _Mumtiline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceeddingLength,
    required TResult Function() isEmpty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue, int max) toDoListTooLong,
  }) {
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceeddingLength,
    TResult Function()? isEmpty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue, int max)? toDoListTooLong,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceeddingLength<T> value) exceeddingLength,
    required TResult Function(_IsEmpty<T> value) isEmpty,
    required TResult Function(_Mumtiline<T> value) multiline,
    required TResult Function(_ToDoListTooLong<T> value) toDoListTooLong,
  }) {
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceeddingLength<T> value)? exceeddingLength,
    TResult Function(_IsEmpty<T> value)? isEmpty,
    TResult Function(_Mumtiline<T> value)? multiline,
    TResult Function(_ToDoListTooLong<T> value)? toDoListTooLong,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class _Mumtiline<T> implements NotesValueFailure<T> {
  const factory _Mumtiline({required T failedValue}) = _$_Mumtiline<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MumtilineCopyWith<T, _Mumtiline<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ToDoListTooLongCopyWith<T, $Res> {
  factory _$ToDoListTooLongCopyWith(
          _ToDoListTooLong<T> value, $Res Function(_ToDoListTooLong<T>) then) =
      __$ToDoListTooLongCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$ToDoListTooLongCopyWithImpl<T, $Res>
    extends _$NotesValueFailureCopyWithImpl<T, $Res>
    implements _$ToDoListTooLongCopyWith<T, $Res> {
  __$ToDoListTooLongCopyWithImpl(
      _ToDoListTooLong<T> _value, $Res Function(_ToDoListTooLong<T>) _then)
      : super(_value, (v) => _then(v as _ToDoListTooLong<T>));

  @override
  _ToDoListTooLong<T> get _value => super._value as _ToDoListTooLong<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(_ToDoListTooLong<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ToDoListTooLong<T>
    with DiagnosticableTreeMixin
    implements _ToDoListTooLong<T> {
  const _$_ToDoListTooLong({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotesValueFailure<$T>.toDoListTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NotesValueFailure<$T>.toDoListTooLong'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToDoListTooLong<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  _$ToDoListTooLongCopyWith<T, _ToDoListTooLong<T>> get copyWith =>
      __$ToDoListTooLongCopyWithImpl<T, _ToDoListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceeddingLength,
    required TResult Function() isEmpty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue, int max) toDoListTooLong,
  }) {
    return toDoListTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceeddingLength,
    TResult Function()? isEmpty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue, int max)? toDoListTooLong,
    required TResult orElse(),
  }) {
    if (toDoListTooLong != null) {
      return toDoListTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceeddingLength<T> value) exceeddingLength,
    required TResult Function(_IsEmpty<T> value) isEmpty,
    required TResult Function(_Mumtiline<T> value) multiline,
    required TResult Function(_ToDoListTooLong<T> value) toDoListTooLong,
  }) {
    return toDoListTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceeddingLength<T> value)? exceeddingLength,
    TResult Function(_IsEmpty<T> value)? isEmpty,
    TResult Function(_Mumtiline<T> value)? multiline,
    TResult Function(_ToDoListTooLong<T> value)? toDoListTooLong,
    required TResult orElse(),
  }) {
    if (toDoListTooLong != null) {
      return toDoListTooLong(this);
    }
    return orElse();
  }
}

abstract class _ToDoListTooLong<T> implements NotesValueFailure<T> {
  const factory _ToDoListTooLong({required T failedValue, required int max}) =
      _$_ToDoListTooLong<T>;

  T get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ToDoListTooLongCopyWith<T, _ToDoListTooLong<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
