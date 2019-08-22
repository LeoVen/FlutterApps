import 'dart:math';

import 'package:hangman/data/example_words.dart';
import 'package:hangman/models/secret_word.dart';

final _random = Random();

// min (inclusive) and max (inclusive)
int randInt(int min, int max) => (_random.nextDouble() * (max.toDouble() - min.toDouble() + 1.0)).toInt() + min;

SecretWord randomWord() {
  return exampleWords[randInt(0, exampleWords.length - 1)];
}
