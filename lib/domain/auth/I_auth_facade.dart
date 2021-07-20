import 'package:dartz/dartz.dart';
import 'package:flutter_todo/domain/auth/auth_failure.dart';
import 'package:flutter_todo/domain/auth/user_data.dart';
import 'package:flutter_todo/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<AuthFailure>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Option<AuthFailure>> sigInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Option<AuthFailure>> sigInWithGoogle();

  Future<Option<UserData>> getSignedInUser();

  Future<void> signOut();
}
