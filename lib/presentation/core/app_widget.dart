import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_todo/application/auth/auth_bloc.dart';
import 'package:flutter_todo/injection.dart';
import 'package:flutter_todo/presentation/routes/router.gr.dart';

import '../../generated/l10n.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();
  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        )
      ],
      child: MaterialApp.router(
        title: "Notes",
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          S.delegate,
        ],
        theme: ThemeData.light().copyWith(
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.blue[900],
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.green[800],
            secondary: Colors.blueAccent,
          ),
        ),
        supportedLocales: S.delegate.supportedLocales,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
