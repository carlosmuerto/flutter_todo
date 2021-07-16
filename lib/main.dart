import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo/injection.dart';
import 'package:injectable/injectable.dart';

import 'presentation/core/app_widget.dart';

void main() {
  // need explicit binding before new Firebase call
  WidgetsFlutterBinding.ensureInitialized();
  // new Firebase call
  Firebase.initializeApp().then((_) {
    configureInjection(Environment.prod);
    runApp(const AppWidget());
  });
}
