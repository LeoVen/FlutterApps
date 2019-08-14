import 'dart:math';

final _random = Random();

// min (inclusive) and max (inclusive)
int randInt(int min, int max) => (_random.nextDouble() * (max.toDouble() - min.toDouble() + 1.0)).toInt() + min;
