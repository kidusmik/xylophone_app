import 'package:flutter/material.dart';

void main() {
  runApp(
    XylophoneApp(),
  );
}

class XylophoneApp extends StatelessWidget {
  // const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Container(),
        ),
      ),
    );
  }
}
