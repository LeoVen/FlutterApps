import 'package:flutter/material.dart';

class HowToPlay extends StatelessWidget {
  const HowToPlay({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How to play the game"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text(
              "What is Hangman?",
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 10.0),
            Text(
              "Hangman is a paper and pencil guessing game for two or more players. One player thinks of a word, phrase or sentence and the other tries to guess it by suggesting letters or numbers, within a certain number of guesses.",
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20.0),
            Text(
              "How to play",
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 10.0),
            Text(
              "In this mobile version you can play with a selected variety of words or create your own and challenge your friends! All you need to do is to go to the menu page and click \"Make your own word\". There you can type in any word (only characters from A-Z and space) and a hint.",
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
