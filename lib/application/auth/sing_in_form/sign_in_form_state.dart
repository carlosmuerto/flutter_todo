part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAddress emailAddress,
    required Password password,
    required bool isSubmitting,
    required bool showErrors,
    required Option<AuthFailure> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => _SignInFormState(
        emailAddress: EmailAddress(""),
        password: Password(""),
        isSubmitting: false,
        showErrors: false,
        authFailureOrSuccessOption: none(),
      );
}
