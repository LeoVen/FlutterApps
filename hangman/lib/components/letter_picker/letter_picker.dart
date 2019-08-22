import 'package:flutter/material.dart';
import 'package:hangman/components/letter_picker/letter_picker_box.dart';
import 'package:hangman/components/letter_picker/letter_picker_box_state.dart';
import 'package:hangman/utils/letter_index.dart';

class LetterPicker extends StatelessWidget {
  // This function is passed to each LetterPickerBox
  final void Function(String) validationCallback;

  final List<LetterPickerBoxState> pickerStates;

  LetterPicker(this.validationCallback, this.pickerStates, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: List.generate(LetterIndex.total, (index) {
          String key = "$index-${LetterIndex.indexToLetter[index]}";
          return LetterPickerBox(LetterIndex.indexToLetter[index],
              validationCallback, pickerStates[index],
              key: Key(key));
        }),
      ),
    );
  }
}
