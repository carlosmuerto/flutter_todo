import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_todo/domain/auth/user_data.dart';
import 'package:flutter_todo/domain/auth/value_objects.dart';

extension FirebaseUserDomainX on User {
  UserData toDomain() => UserData(
        id: UniqueId.fromString(uid),
        displayName: displayName ?? "Anonymous",
      );
}
