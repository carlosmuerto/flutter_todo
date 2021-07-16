import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelByUser() = _$CancelByUser;

  /// Generic Server ERROR
  const factory AuthFailure.serverError() = _$ServerError;
  const factory AuthFailure.emailAlreadyInUse() = _$EmailAlreadyInUse;
  const factory AuthFailure.invalidInputs() = _$InvalidInputs;
}
