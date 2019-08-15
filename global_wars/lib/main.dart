import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './components/app_home.dart';

Future main() async {
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Global Wars",
      home: AppHome(),
    );
  }
}
