import 'package:flutter/material.dart';

class QuestionCounter extends StatelessWidget {
  final int rightQuestions;
  final int wrongQuestions;

  QuestionCounter({this.rightQuestions, this.wrongQuestions, Key key})
      : super(key: key);

  void _doNothing() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ButtonBar(
        alignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('Right Answers: $rightQuestions'),
            color: Colors.green,
            textColor: Colors.white,
            onPressed: _doNothing,
          ),
          RaisedButton(
            child: Text('Wrong Answers: $wrongQuestions'),
            color: Colors.red,
            textColor: Colors.white,
            onPressed: _doNothing,
          ),
        ],
      ),
    );
  }
}
