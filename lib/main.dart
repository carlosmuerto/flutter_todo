import 'package:flutter/material.dart';
import 'package:flutter_todo/domain/auth/value_objects.dart';

void main() {
  //final email = EmailAdress("aaa");
  //print(email);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Materal App Appbar"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () {},
            child: Text("RUN"),
          ),
        ),
      ),
    );
  }
}
