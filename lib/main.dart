import 'package:flutter/material.dart';
import 'package:flutter_samples/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(26, 25, 60, 1.0),
          ),
        ),
      ),
      home: MainPage(),
    );
  }
}
