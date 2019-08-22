import 'package:flutter/material.dart';
import 'package:hangman/components/hangman/hangman.dart';

void main() => runApp(HangmanApp());

class HangmanApp extends StatelessWidget {
  const HangmanApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hangman(),
    );
  }
}
