import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_todo/domain/auth/i_auth_facade.dart';
import 'package:flutter_todo/domain/core/errors.dart';
import 'package:flutter_todo/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference<Map<String, dynamic>>> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final userData = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userData.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference<Map<String, dynamic>> get noteCollection =>
      collection("notes");
}
