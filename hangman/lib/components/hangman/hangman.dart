import 'package:flutter/material.dart';
import 'package:hangman/components/hangman/hangman_image.dart';
import 'package:hangman/components/how_to_play/how_to_play.dart';
import 'package:hangman/components/letter_picker/letter_picker.dart';
import 'package:hangman/components/letter_picker/letter_picker_box_state.dart';
import 'package:hangman/components/select_word_form/select_word_form.dart';
import 'package:hangman/components/word_display/word_display.dart';
import 'package:hangman/models/secret_word.dart';
import 'package:hangman/utils/letter_index.dart';
import 'package:hangman/utils/random_word.dart';

class Hangman extends StatefulWidget {
  Hangman({Key key}) : super(key: key);

  _HangmanState createState() => _HangmanState();
}

class _HangmanState extends State<Hangman> {
  bool playerWin = false;
  bool playerLoose = false;

  int hangmanStage = 0;

  SecretWord secretWord = randomWord();

  List<LetterPickerBoxState> letterPickerStates = List.generate(
      LetterIndex.indexToLetter.length, (_) => LetterPickerBoxState.notPicked);

  @override
  void initState() {
    super.initState();
    hangmanStage = 0;
    secretWord = randomWord();
    letterPickerStates = List.generate(LetterIndex.indexToLetter.length,
        (_) => LetterPickerBoxState.notPicked);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Play Hangman!"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
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
              title: Text("Make your own word"),
              onTap: () {
                Navigator.of(context).pop();
                _showNewWordForm();
              },
            ),
            ListTile(
              title: Text("How to play the game"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HowToPlay()));
              },
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("Created by Leonardo Vencovsky"),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            HangmanImage(hangmanStage),
            WordDisplay(secretWord),
            LetterPicker(_letterValidation, letterPickerStates),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _newRandomWord,
        child: Icon(Icons.refresh),
      ),
    );
  }

  // Shows form for custom user word
  void _showNewWordForm() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => SelectWordForm(_selectWord)));
  }

  // Receives user input from the form
  void _selectWord(SecretWord secret) {
    if (secret == null || secret.word == "") return;

    setState(() {
      secretWord = SecretWord(secret.word, secret.hint);
      letterPickerStates = List.generate(LetterIndex.indexToLetter.length,
          (_) => LetterPickerBoxState.notPicked);
      hangmanStage = 0;
    });
  }

  // Generates random word from data
  void _newRandomWord() {
    _selectWord(randomWord());
  }

  // Checks if the letter is present, updates the letter picker color, the word
  // display and the hangman image
  void _letterValidation(String letter) {
    // Receives a LetterPickerBox that was tapped by the user
    String currentWord = secretWord.word;
    bool found = false;

    if (currentWord == "") return;

    List<LetterPickerBoxState> newLetterPickerStates =
        List.from(letterPickerStates);

    // Updated discovered letters, if any
    List<bool> indexesFound = List.from(secretWord.discovered);

    for (int i = 0; i < currentWord.length; i++) {
      if (currentWord[i] == letter) {
        indexesFound[i] = true;
        found = true;
      }
    }

    if (found)
      newLetterPickerStates[LetterIndex.letterToIndex[letter]] =
          LetterPickerBoxState.letterFound;
    else
      newLetterPickerStates[LetterIndex.letterToIndex[letter]] =
          LetterPickerBoxState.letterNotFound;

    setState(() {
      secretWord = SecretWord.newFrom(
          secretWord.word,
          secretWord.hint,
          List.generate(indexesFound.length, (index) {
            return secretWord.discovered[index] || indexesFound[index];
          }));
      letterPickerStates = newLetterPickerStates;
      hangmanStage = hangmanStage + (found ? 0 : 1);
    });
  }
}
