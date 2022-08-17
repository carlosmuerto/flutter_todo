import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/application/notes/note_form/note_form_cubit.dart';
import 'package:flutter_todo/domain/notes/note.dart';
import 'package:flutter_todo/injection.dart';
import 'package:flutter_todo/presentation/notes/note_form/primitives/todo_item_primitive.dart';
import 'package:flutter_todo/presentation/routes/router.gr.dart';
import 'package:flutter_todo/tools/extension.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

import 'widgets/add_todo_tile_widget.dart';
import 'widgets/body_field_widget.dart';
import 'widgets/color_field_widget.dart';
import 'widgets/todo_list_widget.dart';

class NoteFormPage extends StatelessWidget {
  final Note? editedNote;
  const NoteFormPage({Key? key, this.editedNote}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<NoteFormCubit>()..initialize(optionOf(editedNote)),
      child: BlocConsumer<NoteFormCubit, NoteFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  FlushbarHelper.createError(
                    message: failure.map(
                      unexpected: (message) =>
                          "${context.s.unexpected}: $message",
                      unableToUpdate: (_) => context.s.unableToUpdate,
                      permissionDenied: (_) => context.s.permissionDenied,
                    ),
                  ).show(context);
                },
                (_) {
                  context.router.popUntilRouteWithName(NotesOverviewRoute.name);
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) => Stack(
          children: <Widget>[
            const _NoteFormPageScaffold(),
            _SavingInProgressOverlay(show: state.isSaving)
          ],
        ),
      ),
    );
  }
}

class _NoteFormPageScaffold extends StatelessWidget {
  const _NoteFormPageScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<NoteFormCubit, NoteFormState>(
          buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) => Text(
            state.isEditing ? context.s.editANote : context.s.createANote,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              context.read<NoteFormCubit>().save();
            },
          )
        ],
      ),
      body: BlocBuilder<NoteFormCubit, NoteFormState>(
        buildWhen: (p, c) => p.showErrors != c.showErrors,
        builder: (context, state) {
          return ChangeNotifierProvider(
            create: (_) {
              return FormTodos(state.note.todos
                  .getOrCrash()
                  .map((e) => TodoItemPrimitive.fromDomain(e)));
            },
            child: Form(
              autovalidateMode: state.showErrors
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    BodyField(),
                    ColorField(),
                    TodoList(),
                    AddTodoTile(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _SavingInProgressOverlay extends StatelessWidget {
  final bool show;
  const _SavingInProgressOverlay({
    Key? key,
    required this.show,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !show,
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 150,
        ),
        color: show ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: show,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  context.s.saving,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Colors.white, fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
