import 'package:flutter/material.dart';
import 'package:flutter_todo/injection.dart';
import 'package:injectable/injectable.dart';

void main() {
  //final email = EmailAdress("aaa");
  //print(email);
  // ignore: prefer_const_constructors
  configureIngection(Environment.prod);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Materal App Appbar"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () {},
            child: const Text("RUN"),
          ),
        ),
      ),
    );
  }
}
