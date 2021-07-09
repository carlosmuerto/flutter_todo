import 'package:flutter/material.dart';

void main() {
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
          child: Text("HELLO WORLD"),
        ),
      ),
    );
  }
}
