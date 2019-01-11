import 'package:flutter/material.dart';
import 'package:bloom/home.dart';
import 'package:bloom/pages/player.dart';
import 'package:bloom/pages/suggest.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primaryColor: Colors.pink,
          accentColor: Colors.pinkAccent,
        ),
        home: new BloomHome(),
        routes: {
            '/suggest': (context) => SuggestScreen(),
        },
      );
  }
}