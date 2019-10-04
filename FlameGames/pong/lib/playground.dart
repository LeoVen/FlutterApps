import 'package:flutter/material.dart';

class Playground {
  final double thc = 20;
  final Paint _defaultPaint = Paint()..color = Color(0xff576574);
  final Size screenSize;

  Rect square;

  Playground(this.screenSize) {
    square = Rect.fromLTRB(thc, thc, screenSize.width - thc, screenSize.height - thc);
  }

  void render(Canvas canvas) {
    canvas.drawRect(square, _defaultPaint);
  }
}
