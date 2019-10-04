import 'dart:ui';

import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:pong/ball.dart';
import 'package:pong/playground.dart';

class Pong extends Game {
  final thc = 20.0;

  Ball ball;
  Playground playground;

  Size screenSize;
  double tileSize;

  Pong() {
    initialize();
  }

  void initialize() async {
    resize(await Flame.util.initialDimensions());
  }

  void resize(Size size) {
    screenSize = size;
    tileSize = screenSize.width / 16;

    ball = Ball(_screenCenter(screenSize));
    playground = Playground(screenSize);
  }

  void update(double t) {
    ballCollisionCheck();

    ball.update(t);
  }

  void render(Canvas canvas) {
    // Background
    Rect bgRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    bgPaint.color = Color(0xff000000);
    canvas.drawRect(bgRect, bgPaint);

    playground.render(canvas);

    ball.render(canvas);
  }

  Offset _screenCenter(Size size) {
    return Offset(size.width / 2, size.height / 2);
  }

  void ballCollisionCheck() {
    double bx = ball.position.dx;
    double by = ball.position.dy;
    double br = ball.radius;

    double thc = playground.thc;

    double scX = screenSize.width;
    double scY = screenSize.height;

    // Check which wall we hit and update direction speeds accordingly
    if (bx + br >= scX - thc && ball.speedX > 0) {
      // Right Wall
      ball.speedX *= -1;
    } else if (bx - br <= thc && ball.speedX < 0) {
      // Left Wall
      ball.speedX *= -1;
    } else if (by + br >= scY - thc && ball.speedY > 0) {
      // Floor
      ball.speedY *= -1;
    } else if (by - br <= thc && ball.speedY < 0) {
      // Roof
      ball.speedY *= -1;
    }
    // if (bx + br >= scX - thc || bx - br <= thc || by + br >= scY - thc || by - br <= thc)
  }
}
