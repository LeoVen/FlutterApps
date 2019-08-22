import 'package:flutter/material.dart';
import 'package:hangman/components/word_display/word_display_box.dart';
import 'package:hangman/models/secret_word.dart';

class WordDisplay extends StatelessWidget {
  final SecretWord secretWord;

  const WordDisplay(this.secretWord, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Wrap(
            alignment: WrapAlignment.center,
            children: List.generate(secretWord.word.length, (index) {
              return WordDisplayBox(
                  secretWord.word[index], secretWord.discovered[index], key: Key("$index"));
            }),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Text(secretWord.hint),
          ),
        ],
      ),
    );
  }
}
