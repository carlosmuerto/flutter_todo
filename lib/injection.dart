import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureIngection(String env) {
  $initGetIt(getIt, environment: env);
}
