import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_todo/application/notes/note_form/note_form_cubit.dart';
import 'package:flutter_todo/domain/notes/value_objects.dart';
import 'package:flutter_todo/tools/extension.dart';

class BodyField extends HookWidget {
  const BodyField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //debugPrint(context.read<NoteFormCubit>().state.toString());
    return BlocListener<NoteFormCubit, NoteFormState>(
      listenWhen: (p, c) {
        return p.isEditing != c.isEditing;
      },
      listener: (context, state) {},
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          decoration: InputDecoration(
            labelText: context.s.note,
          ),
          initialValue: context
              .read<NoteFormCubit>()
              .state
              .note
              .body
              .value
              .fold(
                  (f) => f.maybeMap(isEmpty: (_) => "", orElse: () => throw f),
                  (v) => v),
          maxLength: NoteBody.maxLength,
          maxLines: null,
          minLines: 5,
          onChanged: (value) => context.read<NoteFormCubit>().changeBody(value),
          validator: (_) =>
              context.read<NoteFormCubit>().state.note.body.value.fold(
                    (f) => f.maybeMap(
                      exceeddingLength: (f) =>
                          context.s.exceeddingLength(NoteBody.maxLength),
                      isEmpty: (f) => context.s.cannotBeEmpty,
                      orElse: () => null,
                    ),
                    (r) => null,
                  ),
        ),
      ),
    );
  }
}
