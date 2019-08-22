import 'package:flutter/material.dart';

class HangmanImage extends StatelessWidget {
  final int stage;

  HangmanImage(this.stage, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        height: 200.0,
        margin: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage("assets/images/hangman_$stage.png"),
          ),
        ),
      ),
    );
  }
}
