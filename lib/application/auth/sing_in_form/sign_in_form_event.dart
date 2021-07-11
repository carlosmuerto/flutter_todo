part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChange(String emailStr) = _EmailChange;
  const factory SignInFormEvent.passwordChange(String passwordStr) =
      _PasswordChange;
  const factory SignInFormEvent.registerWithEmail() = _RegisterFormEmail;
  const factory SignInFormEvent.signInWithEmail() = _SignInWithEmail;
  const factory SignInFormEvent.signInWithGoogle() = _SignInWithGoogle;
}
