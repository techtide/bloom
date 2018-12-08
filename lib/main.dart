import 'package:flutter/material.dart';
import 'package:bloom/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: new ThemeData(
          primaryColor: Colors.pink,
          accentColor: Colors.pinkAccent
        ),
        home: new BloomHome()
      );
  }
}