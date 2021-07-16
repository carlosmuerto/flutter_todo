import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_todo/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_todo/domain/auth/i_auth_facade.dart';
import 'package:flutter_todo/domain/auth/value_objects.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress.getOrCrash(),
        password: password.getOrCrash(),
      );
      return right(unit);
    } on PlatformException catch (e) {
      switch (e.code) {
        case "email-already-in-use":
          return left(const AuthFailure.emailAlreadyInUse());
        case "invalid-email":
        case "weak-password":
          return left(const AuthFailure.invalidInputs());
        case "operation-not-allowed":
        default:
          return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sigInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress.getOrCrash(),
        password: password.getOrCrash(),
      );
      return right(unit);
    } on PlatformException catch (e) {
      switch (e.code) {
        case "invalid-email":
        case "user-not-found":
        case "wrong-password":
          return left(const AuthFailure.invalidInputs());
        default:
          return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sigInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelByUser());
      }
      final googleAuth = await googleUser.authentication;

      await _firebaseAuth.signInWithCredential(GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      ));

      return right(unit);
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }
}
