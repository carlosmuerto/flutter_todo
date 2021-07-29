import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/application/auth/auth_bloc.dart';
import 'package:flutter_todo/application/notes/note_actor/note_actor_cubit.dart';
import 'package:flutter_todo/application/notes/note_watcher/note_watcher_cubit.dart';
import 'package:flutter_todo/generated/l10n.dart';
import 'package:flutter_todo/injection.dart';
import 'package:flutter_todo/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_todo/tools/extension.dart';

import 'widgets/notes_overview_body_widget.dart';

class NotesOverviewPage extends StatelessWidget {
  const NotesOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteWatcherCubit>(
          create: (context) => getIt()..watchAll(),
        ),
        BlocProvider<NoteActorCubit>(
          create: (context) => getIt(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) => state.maybeMap(
              unAuthenticated: (e) {
                context.router.replace(const SignInRoute());
              },
              orElse: doNoting,
            ),
          ),
          BlocListener<NoteActorCubit, NoteActorState>(
            listener: (context, state) => state.maybeWhen(
              deleteFailure: (f) => FlushbarHelper.createError(
                message: f.when(
                  unexpected: (_) => S.of(context).unexpected,
                  unableToUpdate: () => S.of(context).imposibleError,
                  permissionDenied: () => S.of(context).permissionDenied,
                ),
              ).show(context),
              orElse: doNoting,
            ),
          )
        ],
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return state.maybeMap(
              authenticated: (state) {
                return Scaffold(
                  appBar: AppBar(
                    title: Text(
                        "${state.user.displayName.getFirstsNWords(1)}${S.of(context).notesOf}"),
                    //
                    leading: IconButton(
                      icon: const Icon(Icons.exit_to_app),
                      onPressed: () {
                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.signedOut());
                      },
                    ),
                    actions: const [
                      IconButton(
                        icon: Icon(Icons.indeterminate_check_box),
                        onPressed: doNoting,
                      )
                    ],
                  ),
                  body: const NotesOverviewBody(),
                  floatingActionButton: const FloatingActionButton(
                    onPressed: doNoting,
                    child: Icon(Icons.add),
                  ),
                );
              },
              orElse: () => Scaffold(
                body: Center(
                  child: Text(state.toString()),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
