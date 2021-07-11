// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

  _EmailChange emailChange(String emailStr) {
    return _EmailChange(
      emailStr,
    );
  }

  _PasswordChange passwordChange(String passwordStr) {
    return _PasswordChange(
      passwordStr,
    );
  }

  _RegisterFormEmail registerWithEmail() {
    return const _RegisterFormEmail();
  }

  _SignInWithEmail signInWithEmail() {
    return const _SignInWithEmail();
  }

  _SignInWithGoogle signInWithGoogle() {
    return const _SignInWithGoogle();
  }
}

/// @nodoc
const $SignInFormEvent = _$SignInFormEventTearOff();

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChange,
    required TResult Function(String passwordStr) passwordChange,
    required TResult Function() registerWithEmail,
    required TResult Function() signInWithEmail,
    required TResult Function() signInWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChange,
    TResult Function(String passwordStr)? passwordChange,
    TResult Function()? registerWithEmail,
    TResult Function()? signInWithEmail,
    TResult Function()? signInWithGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChange value) emailChange,
    required TResult Function(_PasswordChange value) passwordChange,
    required TResult Function(_RegisterFormEmail value) registerWithEmail,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChange,
    TResult Function(_PasswordChange value)? passwordChange,
    TResult Function(_RegisterFormEmail value)? registerWithEmail,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

/// @nodoc
abstract class _$EmailChangeCopyWith<$Res> {
  factory _$EmailChangeCopyWith(
          _EmailChange value, $Res Function(_EmailChange) then) =
      __$EmailChangeCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$EmailChangeCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$EmailChangeCopyWith<$Res> {
  __$EmailChangeCopyWithImpl(
      _EmailChange _value, $Res Function(_EmailChange) _then)
      : super(_value, (v) => _then(v as _EmailChange));

  @override
  _EmailChange get _value => super._value as _EmailChange;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(_EmailChange(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChange implements _EmailChange {
  const _$_EmailChange(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'SignInFormEvent.emailChange(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChange &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  _$EmailChangeCopyWith<_EmailChange> get copyWith =>
      __$EmailChangeCopyWithImpl<_EmailChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChange,
    required TResult Function(String passwordStr) passwordChange,
    required TResult Function() registerWithEmail,
    required TResult Function() signInWithEmail,
    required TResult Function() signInWithGoogle,
  }) {
    return emailChange(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChange,
    TResult Function(String passwordStr)? passwordChange,
    TResult Function()? registerWithEmail,
    TResult Function()? signInWithEmail,
    TResult Function()? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (emailChange != null) {
      return emailChange(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChange value) emailChange,
    required TResult Function(_PasswordChange value) passwordChange,
    required TResult Function(_RegisterFormEmail value) registerWithEmail,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
  }) {
    return emailChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChange,
    TResult Function(_PasswordChange value)? passwordChange,
    TResult Function(_RegisterFormEmail value)? registerWithEmail,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (emailChange != null) {
      return emailChange(this);
    }
    return orElse();
  }
}

abstract class _EmailChange implements SignInFormEvent {
  const factory _EmailChange(String emailStr) = _$_EmailChange;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailChangeCopyWith<_EmailChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordChangeCopyWith<$Res> {
  factory _$PasswordChangeCopyWith(
          _PasswordChange value, $Res Function(_PasswordChange) then) =
      __$PasswordChangeCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$PasswordChangeCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$PasswordChangeCopyWith<$Res> {
  __$PasswordChangeCopyWithImpl(
      _PasswordChange _value, $Res Function(_PasswordChange) _then)
      : super(_value, (v) => _then(v as _PasswordChange));

  @override
  _PasswordChange get _value => super._value as _PasswordChange;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(_PasswordChange(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChange implements _PasswordChange {
  const _$_PasswordChange(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChange(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChange &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  _$PasswordChangeCopyWith<_PasswordChange> get copyWith =>
      __$PasswordChangeCopyWithImpl<_PasswordChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChange,
    required TResult Function(String passwordStr) passwordChange,
    required TResult Function() registerWithEmail,
    required TResult Function() signInWithEmail,
    required TResult Function() signInWithGoogle,
  }) {
    return passwordChange(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChange,
    TResult Function(String passwordStr)? passwordChange,
    TResult Function()? registerWithEmail,
    TResult Function()? signInWithEmail,
    TResult Function()? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (passwordChange != null) {
      return passwordChange(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChange value) emailChange,
    required TResult Function(_PasswordChange value) passwordChange,
    required TResult Function(_RegisterFormEmail value) registerWithEmail,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
  }) {
    return passwordChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChange,
    TResult Function(_PasswordChange value)? passwordChange,
    TResult Function(_RegisterFormEmail value)? registerWithEmail,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (passwordChange != null) {
      return passwordChange(this);
    }
    return orElse();
  }
}

abstract class _PasswordChange implements SignInFormEvent {
  const factory _PasswordChange(String passwordStr) = _$_PasswordChange;

  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PasswordChangeCopyWith<_PasswordChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterFormEmailCopyWith<$Res> {
  factory _$RegisterFormEmailCopyWith(
          _RegisterFormEmail value, $Res Function(_RegisterFormEmail) then) =
      __$RegisterFormEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterFormEmailCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$RegisterFormEmailCopyWith<$Res> {
  __$RegisterFormEmailCopyWithImpl(
      _RegisterFormEmail _value, $Res Function(_RegisterFormEmail) _then)
      : super(_value, (v) => _then(v as _RegisterFormEmail));

  @override
  _RegisterFormEmail get _value => super._value as _RegisterFormEmail;
}

/// @nodoc

class _$_RegisterFormEmail implements _RegisterFormEmail {
  const _$_RegisterFormEmail();

  @override
  String toString() {
    return 'SignInFormEvent.registerWithEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RegisterFormEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChange,
    required TResult Function(String passwordStr) passwordChange,
    required TResult Function() registerWithEmail,
    required TResult Function() signInWithEmail,
    required TResult Function() signInWithGoogle,
  }) {
    return registerWithEmail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChange,
    TResult Function(String passwordStr)? passwordChange,
    TResult Function()? registerWithEmail,
    TResult Function()? signInWithEmail,
    TResult Function()? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (registerWithEmail != null) {
      return registerWithEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChange value) emailChange,
    required TResult Function(_PasswordChange value) passwordChange,
    required TResult Function(_RegisterFormEmail value) registerWithEmail,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
  }) {
    return registerWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChange,
    TResult Function(_PasswordChange value)? passwordChange,
    TResult Function(_RegisterFormEmail value)? registerWithEmail,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (registerWithEmail != null) {
      return registerWithEmail(this);
    }
    return orElse();
  }
}

abstract class _RegisterFormEmail implements SignInFormEvent {
  const factory _RegisterFormEmail() = _$_RegisterFormEmail;
}

/// @nodoc
abstract class _$SignInWithEmailCopyWith<$Res> {
  factory _$SignInWithEmailCopyWith(
          _SignInWithEmail value, $Res Function(_SignInWithEmail) then) =
      __$SignInWithEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithEmailCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithEmailCopyWith<$Res> {
  __$SignInWithEmailCopyWithImpl(
      _SignInWithEmail _value, $Res Function(_SignInWithEmail) _then)
      : super(_value, (v) => _then(v as _SignInWithEmail));

  @override
  _SignInWithEmail get _value => super._value as _SignInWithEmail;
}

/// @nodoc

class _$_SignInWithEmail implements _SignInWithEmail {
  const _$_SignInWithEmail();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChange,
    required TResult Function(String passwordStr) passwordChange,
    required TResult Function() registerWithEmail,
    required TResult Function() signInWithEmail,
    required TResult Function() signInWithGoogle,
  }) {
    return signInWithEmail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChange,
    TResult Function(String passwordStr)? passwordChange,
    TResult Function()? registerWithEmail,
    TResult Function()? signInWithEmail,
    TResult Function()? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (signInWithEmail != null) {
      return signInWithEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChange value) emailChange,
    required TResult Function(_PasswordChange value) passwordChange,
    required TResult Function(_RegisterFormEmail value) registerWithEmail,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
  }) {
    return signInWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChange,
    TResult Function(_PasswordChange value)? passwordChange,
    TResult Function(_RegisterFormEmail value)? registerWithEmail,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (signInWithEmail != null) {
      return signInWithEmail(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmail implements SignInFormEvent {
  const factory _SignInWithEmail() = _$_SignInWithEmail;
}

/// @nodoc
abstract class _$SignInWithGoogleCopyWith<$Res> {
  factory _$SignInWithGoogleCopyWith(
          _SignInWithGoogle value, $Res Function(_SignInWithGoogle) then) =
      __$SignInWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithGoogleCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithGoogleCopyWith<$Res> {
  __$SignInWithGoogleCopyWithImpl(
      _SignInWithGoogle _value, $Res Function(_SignInWithGoogle) _then)
      : super(_value, (v) => _then(v as _SignInWithGoogle));

  @override
  _SignInWithGoogle get _value => super._value as _SignInWithGoogle;
}

/// @nodoc

class _$_SignInWithGoogle implements _SignInWithGoogle {
  const _$_SignInWithGoogle();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChange,
    required TResult Function(String passwordStr) passwordChange,
    required TResult Function() registerWithEmail,
    required TResult Function() signInWithEmail,
    required TResult Function() signInWithGoogle,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChange,
    TResult Function(String passwordStr)? passwordChange,
    TResult Function()? registerWithEmail,
    TResult Function()? signInWithEmail,
    TResult Function()? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChange value) emailChange,
    required TResult Function(_PasswordChange value) passwordChange,
    required TResult Function(_RegisterFormEmail value) registerWithEmail,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChange,
    TResult Function(_PasswordChange value)? passwordChange,
    TResult Function(_RegisterFormEmail value)? registerWithEmail,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogle implements SignInFormEvent {
  const factory _SignInWithGoogle() = _$_SignInWithGoogle;
}

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

  _SignInFormState call(
      {required EmailAddress emailAddress,
      required Password password,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {required this.emailAddress,
      required this.password,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {required EmailAddress emailAddress,
      required Password password,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_SignInFormState;

  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
