import 'package:flutter/material.dart';
import 'package:global_wars/models/battle_unit.dart';

class UnitCardImage extends StatelessWidget {
  final int id;

  UnitCardImage({this.id});

  double fontPick(int textLength) {
    if (textLength > 30) {
      return 20.0;
    } else if (textLength > 20) {
      return 24.0;
    } else if (textLength > 10) {
      return 28.0;
    }

    return 32.0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: Stack(
          children: <Widget>[
            Image.asset("assets/images/${battleUnits[id].fileName}.jpg"),
            Positioned(
              left: 0.0,
              bottom: 0.0,
              child: Container(
                margin: const EdgeInsets.only(bottom: 10.0, left: 20.0),
                child: Stack(
                  children: <Widget>[
                    Text(
                      "${battleUnits[id].name}",
                      style: TextStyle(
                        fontSize: fontPick(battleUnits[id].name.length),
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1
                          ..color = Colors.white,
                      ),
                    ),
                    Text(
                      "${battleUnits[id].name}",
                      style: TextStyle(
                        fontSize: fontPick(battleUnits[id].name.length),
                        color: Colors.grey[900],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
