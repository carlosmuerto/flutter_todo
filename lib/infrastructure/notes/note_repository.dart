import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_todo/infrastructure/notes/note_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/notes/i_note_repository.dart';
import '../../domain/notes/note.dart';
import '../../domain/notes/note_failure.dart';
import '../core/firestore_helpers.dart';

@Singleton(as: INoteRepository)
class FirebaseFirestoreNoteRepository implements INoteRepository {
  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchAll() async* {
    // user/{user ID}/notes/{note ID}

    final userDoc = await FirebaseFirestore.instance.userDocument();
    yield* userDoc.noteCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<NoteFailure, KtList<Note>>(
            snapshot.docs
                .map((doc) => NoteDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, st) {
      if (e is FirebaseException && e.message != null) {
        switch (e.code) {
          case 'permission-denied':
            return left(const NoteFailure.permissionDenied());
          default:
            return left(NoteFailure.unexpected(message: e.message!));
        }
      }
      //remember => log.error(e);
      return left(NoteFailure.unexpected(message: Error.safeToString(e)));
    });
  }

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted() async* {
    // user/{user ID}/notes/{note ID}

    final userDoc = await FirebaseFirestore.instance.userDocument();
    yield* userDoc.noteCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map(
            (doc) => NoteDto.fromJson(
              doc.data(),
            ).toDomain(),
          ),
        )
        .map((notes) => right<NoteFailure, KtList<Note>>(notes
            .where(
              (note) => note.todos.getOrCrash().any(
                    (todoItem) => !todoItem.done,
                  ),
            )
            .toImmutableList()))
        .onErrorReturnWith((e, st) {
      if (e is FirebaseException && e.message != null) {
        switch (e.code) {
          case 'permission-denied':
            return left(const NoteFailure.permissionDenied());
          default:
            return left(NoteFailure.unexpected(message: e.message!));
        }
      }
      //remember => log.error(e);
      return left(NoteFailure.unexpected(message: Error.safeToString(e)));
    });
  }

  @override
  Future<Option<NoteFailure>> create(Note note) async {
    try {
      final userDoc = await FirebaseFirestore.instance.userDocument();
      final noteDto = NoteDto.formDomain(note);
      await userDoc.noteCollection.doc(noteDto.id).set(noteDto.toJson());
      return none();
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'PERMISSION_DENIED':
          return some(const NoteFailure.permissionDenied());
        default:
          return some(NoteFailure.unexpected(message: e.code));
      }
    }
  }

  @override
  Future<Option<NoteFailure>> update(Note note) async {
    try {
      final userDoc = await FirebaseFirestore.instance.userDocument();
      final noteDto = NoteDto.formDomain(note);
      await userDoc.noteCollection.doc(noteDto.id).update(noteDto.toJson());
      return none();
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'PERMISSION_DENIED':
          return some(const NoteFailure.permissionDenied());
        case 'NOT_FOUND':
          return some(const NoteFailure.unableToUpdate());
        default:
          return some(NoteFailure.unexpected(message: e.code));
      }
    }
  }

  @override
  Future<Option<NoteFailure>> delete(Note note) async {
    try {
      final userDoc = await FirebaseFirestore.instance.userDocument();
      await userDoc.noteCollection.doc(note.id.getOrCrash()).delete();
      return none();
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'PERMISSION_DENIED':
          return some(const NoteFailure.permissionDenied());
        case 'NOT_FOUND':
          return some(const NoteFailure.unableToUpdate());
        default:
          return some(NoteFailure.unexpected(message: e.code));
      }
    }
  }
}
