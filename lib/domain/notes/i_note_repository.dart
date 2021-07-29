import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'note.dart';
import 'note_failure.dart';

abstract class INoteRepository {
  Stream<Either<NoteFailure, KtList<Note>>> watchAll();
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted();
  Future<Option<NoteFailure>> create(Note note);
  Future<Option<NoteFailure>> update(Note note);
  Future<Option<NoteFailure>> delete(Note note);
}
