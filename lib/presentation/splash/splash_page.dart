import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/presentation/routes/router.gr.dart';
import 'package:flutter_todo/tools/extension.dart';

import '../../application/auth/auth_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          initial: doNoting,
          authenticated: (_) =>
              context.router.replace(const NotesOverviewRoute()),
          unAuthenticated: () => context.router.replace(const SignInRoute()),
        );
      },
      child: const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
