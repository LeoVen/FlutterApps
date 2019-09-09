import 'dart:ui';

import 'package:tap_the_fly/tap_the_fly_game.dart';

class Fly {
  // The fly's size and position represented by a Rect
  Rect flyRect;

  // Responsible for painting this fly
  Paint flyPaint;

  // If dead, start animating down
  bool isDead;

  // If off the screen, remove the fly from the spawner
  bool isOffScreen;

  // The game that owns this fly
  final TapTheFlyGame game;

  Fly(this.game, double x, double y) {
    flyRect = Rect.fromLTWH(x, y, game.tileSize, game.tileSize);
    flyPaint = Paint()..color = Color(0xff6ab04c);
    isDead = false;
    isOffScreen = false;
  }

  void render(Canvas c) {
    c.drawRect(flyRect, flyPaint);
  }

  void update(double timeDelta) {
    if (isDead) {
      // The Fly moves 12 * game.tileSize per second
      flyRect = flyRect.translate(0, game.tileSize * 12 * timeDelta);
    }

    if (flyRect.top > game.screenSize.height) {
      // All flies with isOffScreen are remove from the spawner list
      isOffScreen = true;
    }
  }

  // The game properly checked and concluded that the fly was tapped
  void onFlyTapped() {
    if (!isDead) {
      isDead = true;
      flyPaint.color = Color(0xffff4757);
      game.spawnFly();
    }
  }
}
