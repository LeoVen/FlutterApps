import 'package:flutter/material.dart';

import './components/app_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dice Crit",
      home: AppHome(),
    );
  }
}
