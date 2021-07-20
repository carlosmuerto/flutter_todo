import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_todo/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_todo/domain/auth/i_auth_facade.dart';
import 'package:flutter_todo/domain/auth/user_data.dart';
import 'package:flutter_todo/domain/auth/value_objects.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

  @override
  Future<Option<AuthFailure>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress.getOrCrash(),
        password: password.getOrCrash(),
      );
      return none();
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "email-already-in-use":
          return some(const AuthFailure.emailAlreadyInUse());
        case "invalid-email":
        case "weak-password":
          return some(const AuthFailure.invalidInputs());
        case "operation-not-allowed":
        default:
          return some(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Option<AuthFailure>> sigInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress.getOrCrash(),
        password: password.getOrCrash(),
      );
      return none();
    } on FirebaseAuthException catch (e) {
      //print("->>>>>>>>>>>>>${e.code}");
      switch (e.code) {
        case "invalid-email":
        case "user-not-found":
        case "wrong-password":
          return some(const AuthFailure.invalidInputs());
        default:
          return some(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Option<AuthFailure>> sigInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return some(const AuthFailure.cancelByUser());
      }
      final googleAuth = await googleUser.authentication;

      await _firebaseAuth.signInWithCredential(GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      ));

      return none();
    } on FirebaseAuthException catch (_) {
      return some(const AuthFailure.serverError());
    } on PlatformException catch (_) {
      return some(const AuthFailure.cancelByUser());
    }
  }

  @override
  Future<Option<UserData>> getSignedInUser() async {
    return optionOf(_firebaseAuth.currentUser?.toDomain());
  }

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);
}
