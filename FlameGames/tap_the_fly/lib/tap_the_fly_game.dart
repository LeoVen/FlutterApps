import 'dart:ui';

import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/gestures.dart';
import 'package:tap_the_fly/components/fly.dart';
import 'package:tap_the_fly/controllers/fly_spawner.dart';

class TapTheFlyGame extends Game {
  Size screenSize;
  double tileSize;

  FlySpawner spawner;

  // Call sequence
  TapTheFlyGame() {
    initialize();
  }

  // 0
  void initialize() async {
    spawner = FlySpawner(this);
    // Workaround since when the app starts its dimensions might be 0x0
    resize(await Flame.util.initialDimensions());

    spawnFly();
  }

  // 1
  void resize(Size size) {
    screenSize = size;
    tileSize = screenSize.width / 9;
  }

  // 2
  void update(double timeDelta) {
    spawner.updateFlies(timeDelta);
  }

  // 3
  void render(Canvas canvas) {
    // Background
    Rect bgRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    bgPaint.color = Color(0xff576574);
    canvas.drawRect(bgRect, bgPaint);

    // Flies
    spawner.renderFlies(canvas);
  }

  void onTapDown(TapDownDetails details) {
    spawner.checkTappedFlies(details);
  }

  void spawnFly() {
    spawner.spawnFly();
  }
}
