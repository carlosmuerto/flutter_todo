import 'package:auto_route/auto_route.dart';

import '../sign_in/sing_in_page.dart';
import '../splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(path: "/Splash", page: SplashPage, initial: true),
    MaterialRoute(
      path: "/SigIn",
      page: SignInPage,
    ),
  ],
)
class $AppRouter {}
