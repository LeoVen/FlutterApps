import 'package:flutter/material.dart';
import 'package:hangman/models/secret_word.dart';
import 'package:hangman/utils/letter_index.dart';
import 'package:hangman/utils/random_word.dart';

class SelectWordForm extends StatelessWidget {
  final componentsMargin = 20.0;
  final Function(SecretWord) callback;

  SelectWordForm(this.callback, {Key key}) : super(key: key);

  // text controllers
  final wordTextController = TextEditingController();
  final hintTextController = TextEditingController();

  final focus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HangmanApp"),
        centerTitle: true,
      ),
      body: Container(
        height: 350.0,
        child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: componentsMargin),
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: wordTextController,
                decoration: InputDecoration(
                  errorText: _wordValidator(wordTextController.text),
                  labelText: "Secret word",
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                ),
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(focus);
                },
              ),
              SizedBox(height: componentsMargin),
              TextFormField(
                controller: hintTextController,
                textInputAction: TextInputAction.done,
                focusNode: focus,
                decoration: InputDecoration(
                  labelText: "Hint",
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: componentsMargin),
              RaisedButton(
                onPressed: () {
                  // Get form input and close form if the word is valid
                  if (_wordValidator(wordTextController.text) == null) {
                    callback(SecretWord(
                        wordTextController.text, hintTextController.text));
                    Navigator.pop(context);
                  }
                },
                child: Text("Ok"),
              ),
              SizedBox(height: componentsMargin),
              RaisedButton(
                child: Text("Select Random Word"),
                onPressed: () {
                  // Get random word and close form
                  callback(randomWord());
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _wordValidator(String content) {
    content = content.toUpperCase();

    for (int i = 0; i < content.length; i++) {
      if (LetterIndex.letterToIndex[content[i]] == null) {
        return "Invalid character: ${content[i]}";
      }
    }

    // valid word
    return null;
  }
}
