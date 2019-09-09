import 'package:boxgame/box_game.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flame/util.dart';

void main() async {
  var flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);
  var game = BoxGame();
  var tapper = TapGestureRecognizer();
  tapper.onTapDown = game.onTapDown;
  runApp(game.widget);
  flameUtil.addGestureRecognizer(tapper);
}
