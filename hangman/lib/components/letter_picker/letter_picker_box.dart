import 'package:flutter/material.dart';
import 'package:hangman/components/letter_picker/letter_picker_box_state.dart';

class LetterPickerBox extends StatelessWidget {
  // This function is used by Hangman to validate a click on a letter
  final void Function(String) validationCallback;

  final String letter;

  final LetterPickerBoxState pickerState;

  static final colorStates = {
    LetterPickerBoxState.notPicked: Colors.grey,
    LetterPickerBoxState.letterFound: Colors.green,
    LetterPickerBoxState.letterNotFound: Colors.red,
  };

  const LetterPickerBox(this.letter, this.validationCallback, this.pickerState,
      {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (pickerState == LetterPickerBoxState.notPicked)
          validationCallback(letter);
      },
      child: Container(
        margin: const EdgeInsets.all(2.0),
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: colorStates[pickerState],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(letter),
          ],
        ),
      ),
    );
  }
}
