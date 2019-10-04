import 'dart:ui';

import 'package:flame/game.dart';

class Ball extends Game {

  double radius;
  Offset position;
  Paint paint;

  // Speeds in the x and y directions
  double speedY;
  double speedX;

  Ball(this.position) {
    radius = 10.0;
    speedX = 100.0;
    speedY = 100.0;
    paint = Paint()..color = Color(0xffffffff);
  }

  void render(Canvas canvas) {
    canvas.drawCircle(position, radius, paint);
  }

  void update(double t) {
    position = Offset(position.dx + t * speedX, position.dy + t * speedY);

    speedX = speedX < 0 ? speedX - 1.0 : speedX + 1.0;
    speedY = speedY < 0 ? speedY - 1.0 : speedY + 1.0;
  }
}
