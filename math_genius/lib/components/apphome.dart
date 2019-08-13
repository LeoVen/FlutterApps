import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:math_genius/models/save_data.dart';
import 'package:math_genius/util/save_file_handler.dart';

import './difficulty_menu.dart';
import './question_counter.dart';
import '../models/operation.dart';
import '../models/question.dart';
import '../util/randint.dart';

class AppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  final List<int> _min = [
    0,
    -10,
    -50,
    -100,
    -200,
    -300,
    -400,
    -500,
    -1000,
    -10000,
    -100000
  ];
  final List<int> _max = [
    10,
    20,
    50,
    100,
    200,
    300,
    400,
    500,
    1000,
    10000,
    100000
  ];

  int ansRight = 0;
  int ansWrong = 0;
  int gameDif = 0; // game difficulty
  int sliderValue = 0;
  int score = 0;
  Question question;

  @override
  Widget build(BuildContext context) {
    question = Question(OperationUtils.random(), randIntDif(), randIntDif());
    final Set<num> numList = question.getWrongAnswers();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Math Genius'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                'Can you guess the result?',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
            ),
            Container(
              child: Text(
                '${question.num1} ${OperationUtils.operationChar(question.getOp())} ${question.num2} = ?',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              margin: const EdgeInsets.only(top: 10.0, bottom: 20.0),
            ),
            ...numList
                .map((ans) => RaisedButton(
                      key: Key(
                          "$ans"), // Provided that getWrongAnswers() returns a Set<num>
                      child: Text('$ans'),
                      textColor: Colors.white,
                      color: Colors.black,
                      onPressed: () => validate(ans),
                    ))
                .toList(),
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
              margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            ),
            QuestionCounter(
              rightQuestions: ansRight,
              wrongQuestions: ansWrong,
            ),
            DifficultyMenu(sliderOnChange, sliderValue),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: Text("Score: $score"),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.file_upload),
              onTap: saveProgress,
              title: Text("Save Progress"),
            ),
            ListTile(
              leading: Icon(Icons.file_download),
              onTap: loadProgress,
              title: Text("Load Progress"),
            ),
          ],
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }

  void loadProgress() {
    // @todo load progress from a file
    SaveFileHandler.load().then((save) {
      // @todo close drawer
      setState(() {
        score = save.score;
        ansRight = save.answersRight;
        ansWrong = save.answersWrong;
        gameDif = 0;
      });
    });
  }

  // Generate an integer based on current game difficulty
  int randIntDif() => randInt(_min[gameDif], _max[gameDif]);

  void reload() {
    setState(() {
      ansRight = ansRight;
      ansWrong = ansWrong;
      gameDif = gameDif;
    });
  }

  void saveProgress() {
    SaveFileHandler.save(SaveData(
      answersRight: ansRight,
      answersWrong: ansWrong,
      score: score,
    )).then((_) {
      // @todo close drawer and add popup for save success
    });
  }

  void setDifficulty(int d) {
    assert(d >= 0 && d <= 2);

    gameDif = d;
  }

  void sliderOnChange(int d) {
    // d is in range [0, 10]
    setState(() {
      sliderValue = d;
      gameDif = d.floor();
    });
  }

  void validate(int value) {
    int scoreDelta = gameDif + 1;

    if (value == question.getAnswer()) {
      setState(() {
        ansRight = ansRight + 1;
        score = score + scoreDelta;
      });
    } else {
      setState(() {
        ansWrong = ansWrong + 1;
        score = score > scoreDelta ? score - scoreDelta : 0;
      });
    }
  }
}
