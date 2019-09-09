import 'package:flame/util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tap_the_fly/tap_the_fly_game.dart';

void main() async {
  // Set device orientation
  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);

  // Initialize and run game
  var game = TapTheFlyGame();
  runApp(game.widget);

  // Bind a tap gesture recognizer to the game
  var tapper = TapGestureRecognizer();
  tapper.onTapDown = game.onTapDown;
  flameUtil.addGestureRecognizer(tapper);
}
