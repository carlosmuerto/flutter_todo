import 'package:dartz/dartz.dart';
import 'package:flutter_todo/domain/auth/auth_failure.dart';
import 'package:flutter_todo/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> sigInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> sigInWithGoogle();
}
