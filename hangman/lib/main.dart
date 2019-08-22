import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hangman/components/hangman/hangman.dart';

void main() async {
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(HangmanApp());
}

class HangmanApp extends StatelessWidget {
  const HangmanApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hangman(),
    );
  }
}
