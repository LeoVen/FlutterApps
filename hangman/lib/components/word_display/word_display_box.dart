import 'package:flutter/material.dart';

class WordDisplayBox extends StatelessWidget {
  final String letter;
  final bool displayLetter;

  WordDisplayBox(this.letter, this.displayLetter, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: _buildBottomBorder(),
      ),
      margin: const EdgeInsets.all(2.0),
      height: 40.0,
      width: 40.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            _selectText(),
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ],
      ),
    );
  }

  String _selectText() {
    if (letter == " ") return " ";
    if (displayLetter) return letter;

    return " ";
  }

  Border _buildBottomBorder() {
    if (letter == " ") return null;
    if (!displayLetter)
      return Border(
        bottom: BorderSide(
          width: 1.0,
        ),
      );

    return null;
  }
}
