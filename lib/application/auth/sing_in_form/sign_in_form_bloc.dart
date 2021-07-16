import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/value_objects.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  SignInFormBloc(this._authFacade)
      : super(
          SignInFormState.initial(),
        );

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChange: _emailChange,
      passwordChange: _passwordChange,
      registerWithEmail: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.registerWithEmailAndPassword,
        );
      },
      signInWithEmail: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.sigInWithEmailAndPassword,
        );
      },
      signInWithGoogle: _signInWithGoogle,
    );
  }

  Stream<SignInFormState> _signInWithGoogle(_SignInWithGoogle e) async* {
    yield state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    );
    final failureOrSuccess = await _authFacade.sigInWithGoogle();
    yield state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: some(failureOrSuccess),
    );
  }

  Stream<SignInFormState> _emailChange(_EmailChange e) async* {
    yield state.copyWith(
      emailAddress: EmailAddress(e.emailStr),
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<SignInFormState> _passwordChange(_PasswordChange e) async* {
    yield state.copyWith(
      password: Password(e.passwordStr),
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit>? failureOrSuccess;
    if (state.emailAddress.isValid && state.password.isValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrors: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
