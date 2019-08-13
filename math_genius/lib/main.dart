import 'package:flutter/material.dart';

import './components/apphome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Math Genius",
      home: AppHome(),
    );
  }
}
