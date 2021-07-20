import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_todo/domain/auth/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_todo/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(
    this._authFacade,
  ) : super(const _Initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: _authCheckRequested,
      signedOut: _signedOut,
    );
  }

  Stream<AuthState> _authCheckRequested(_AuthCheckRequested e) async* {
    final userOption = await _authFacade.getSignedInUser();
    yield userOption.fold(
      () => const _Unauthenticaed(),
      (u) => _Authenticaed(u),
    );
  }

  Stream<AuthState> _signedOut(_SignedOut e) async* {
    await _authFacade.signOut();
    yield const _Unauthenticaed();
  }
}
