import 'dart:math';

final Random _random = Random();

// Generate an integer based on any given value
int randInt(int min, int max) => min + _random.nextInt(max - min);
