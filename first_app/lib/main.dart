import 'dart:math';

import 'package:flutter/material.dart';

import './components/question_counter.dart';
import './models/question.dart';
import './models/operation.dart';
import './util/randint.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final _rand = Random();

  final List<int> _min = [0, -10, -1000];
  final List<int> _max = [10, 100, 1000];

  int ansRight = 0;
  int ansWrong = 0;
  int gameDif = 0; // game difficulty
  Question question;

  @override
  Widget build(BuildContext context) {
    question = Question(OperationUtils.random(), randIntDif(), randIntDif());
    List<num> numList = question.getWrongAnswers();

    List<Widget> answerButtons = [];

    // Add initial texts
    answerButtons.addAll(<Widget>[
      Container(
        child: Text(
          'Can you guess the result?',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      ),
      Container(
        child: Text(
          '${question.num1} ${OperationUtils.operationChar(question.getOp())} ${question.num2} = ?',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      ),
    ]);

    // Add option buttons
    numList.forEach((ans) => answerButtons.add(
          RaisedButton(
            child: Text('$ans'),
            textColor: Colors.white,
            color: Colors.black,
            onPressed: () => validate(ans),
          ),
        ));

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Math Genius'),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: answerButtons +
                <Widget>[
                  Container(
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          RaisedButton(
                            child: Text('Another One'),
                            onPressed: reload,
                          ),
                        ],
                      ),
                    ),
                    margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                  ),
                  QuestionCounter(
                    rightQuestions: ansRight,
                    wrongQuestions: ansWrong,
                  ),
                ],
          ),
        ),
      ),
    );
  }

  // Generate an integer based on current game difficulty
  int randIntDif() => randInt(_min[gameDif], _max[gameDif]);

  void setDifficulty(int d) {
    assert(d >= 0 && d <= 2);

    gameDif = d;
  }

  void validate(int value) {
    if (value == question.getAnswer()) {
      setState(() {
        ansRight = ansRight + 1;
      });
    } else {
      setState(() {
        ansWrong = ansWrong + 1;
      });
    }
  }

  void reload() {
    setState(() {
      ansRight = ansRight;
      ansWrong = ansWrong;
      gameDif = gameDif;
    });
  }
}
