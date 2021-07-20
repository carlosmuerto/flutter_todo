import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_todo/domain/auth/user_data.dart';

extension FirebaseUserDomainX on User {
  UserData toDomain() => UserData(
        id: UniqueId.fromString(uid),
        displayName: displayName ?? "Anonymous",
      );
}
