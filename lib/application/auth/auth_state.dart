part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticaed(UserData user) = _Authenticaed;
  const factory AuthState.unauthenticaed() = _Unauthenticaed;
}
