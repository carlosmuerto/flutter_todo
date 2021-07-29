import 'package:auto_route/auto_route.dart';
import 'package:flutter_todo/presentation/notes/notes_overview/notes_overview_page.dart';

import '../sign_in/sing_in_page.dart';
import '../splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: NotesOverviewPage),
  ],
)
class $AppRouter {}
