// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'note_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteFailureTearOff {
  const _$NoteFailureTearOff();

  _Unexpected unexpected({String message = "unexpected"}) {
    return _Unexpected(
      message: message,
    );
  }

  _UnableToUpdate unableToUpdate() {
    return const _UnableToUpdate();
  }

  _PermissionDenied permissionDenied() {
    return const _PermissionDenied();
  }
}

/// @nodoc
const $NoteFailure = _$NoteFailureTearOff();

/// @nodoc
mixin _$NoteFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unexpected,
    required TResult Function() unableToUpdate,
    required TResult Function() permissionDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function()? unableToUpdate,
    TResult Function()? permissionDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_PermissionDenied value) permissionDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_PermissionDenied value)? permissionDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFailureCopyWith<$Res> {
  factory $NoteFailureCopyWith(
          NoteFailure value, $Res Function(NoteFailure) then) =
      _$NoteFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteFailureCopyWithImpl<$Res> implements $NoteFailureCopyWith<$Res> {
  _$NoteFailureCopyWithImpl(this._value, this._then);

  final NoteFailure _value;
  // ignore: unused_field
  final $Res Function(NoteFailure) _then;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$NoteFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Unexpected(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected({this.message = "unexpected"});

  @JsonKey(defaultValue: "unexpected")
  @override
  final String message;

  @override
  String toString() {
    return 'NoteFailure.unexpected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unexpected &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$UnexpectedCopyWith<_Unexpected> get copyWith =>
      __$UnexpectedCopyWithImpl<_Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unexpected,
    required TResult Function() unableToUpdate,
    required TResult Function() permissionDenied,
  }) {
    return unexpected(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function()? unableToUpdate,
    TResult Function()? permissionDenied,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_PermissionDenied value) permissionDenied,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_PermissionDenied value)? permissionDenied,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements NoteFailure {
  const factory _Unexpected({String message}) = _$_Unexpected;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UnexpectedCopyWith<_Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnableToUpdateCopyWith<$Res> {
  factory _$UnableToUpdateCopyWith(
          _UnableToUpdate value, $Res Function(_UnableToUpdate) then) =
      __$UnableToUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnableToUpdateCopyWithImpl<$Res>
    extends _$NoteFailureCopyWithImpl<$Res>
    implements _$UnableToUpdateCopyWith<$Res> {
  __$UnableToUpdateCopyWithImpl(
      _UnableToUpdate _value, $Res Function(_UnableToUpdate) _then)
      : super(_value, (v) => _then(v as _UnableToUpdate));

  @override
  _UnableToUpdate get _value => super._value as _UnableToUpdate;
}

/// @nodoc

class _$_UnableToUpdate implements _UnableToUpdate {
  const _$_UnableToUpdate();

  @override
  String toString() {
    return 'NoteFailure.unableToUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnableToUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unexpected,
    required TResult Function() unableToUpdate,
    required TResult Function() permissionDenied,
  }) {
    return unableToUpdate();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function()? unableToUpdate,
    TResult Function()? permissionDenied,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_PermissionDenied value) permissionDenied,
  }) {
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_PermissionDenied value)? permissionDenied,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class _UnableToUpdate implements NoteFailure {
  const factory _UnableToUpdate() = _$_UnableToUpdate;
}

/// @nodoc
abstract class _$PermissionDeniedCopyWith<$Res> {
  factory _$PermissionDeniedCopyWith(
          _PermissionDenied value, $Res Function(_PermissionDenied) then) =
      __$PermissionDeniedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PermissionDeniedCopyWithImpl<$Res>
    extends _$NoteFailureCopyWithImpl<$Res>
    implements _$PermissionDeniedCopyWith<$Res> {
  __$PermissionDeniedCopyWithImpl(
      _PermissionDenied _value, $Res Function(_PermissionDenied) _then)
      : super(_value, (v) => _then(v as _PermissionDenied));

  @override
  _PermissionDenied get _value => super._value as _PermissionDenied;
}

/// @nodoc

class _$_PermissionDenied implements _PermissionDenied {
  const _$_PermissionDenied();

  @override
  String toString() {
    return 'NoteFailure.permissionDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PermissionDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unexpected,
    required TResult Function() unableToUpdate,
    required TResult Function() permissionDenied,
  }) {
    return permissionDenied();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function()? unableToUpdate,
    TResult Function()? permissionDenied,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_PermissionDenied value) permissionDenied,
  }) {
    return permissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_PermissionDenied value)? permissionDenied,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class _PermissionDenied implements NoteFailure {
  const factory _PermissionDenied() = _$_PermissionDenied;
}
