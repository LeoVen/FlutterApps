import 'dart:math';
import 'dart:ui';

import 'package:flutter/src/gestures/tap.dart';
import 'package:tap_the_fly/components/fly.dart';
import 'package:tap_the_fly/tap_the_fly_game.dart';

class FlySpawner {
  // List of flies in the game
  List<Fly> flies;

  // The game where the spawner will be spawning flies
  final TapTheFlyGame game;

  final Random rng = Random();

  FlySpawner(this.game) {
    flies = List<Fly>();
  }

  // Goes through each fly and renders them on the canvas
  void renderFlies(Canvas canvas) {
    flies.forEach((Fly fly) => fly.render(canvas));
  }

  // Update flies and remove those off the screen
  void updateFlies(double timeDelta) {
    flies.forEach((Fly fly) => fly.update(timeDelta));
    flies.removeWhere((Fly fly) => fly.isOffScreen);
  }

  // Spawn a fly at random coordinates
  void spawnFly() {
    double x = rng.nextDouble() * (game.screenSize.width - game.tileSize);
    double y = rng.nextDouble() * (game.screenSize.height - game.tileSize);
    flies.add(Fly(game, x, y));
  }

  // Check if the tap hit any fly
  void checkTappedFlies(TapDownDetails details) {
    flies.forEach((Fly fly) {
      if (fly.flyRect.contains(details.globalPosition)) {
        // The tap is inside the rectangle
        fly.onFlyTapped();
      }
    });
  }
}
