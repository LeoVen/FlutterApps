import 'package:flutter/material.dart';
import 'package:timer/timer/timer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timer',
      home: Timer(),
      theme: ThemeData(
        canvasColor: Colors.blueGrey,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        accentColor: Colors.pinkAccent,
        brightness: Brightness.dark,
      ),
    );
  }
}
