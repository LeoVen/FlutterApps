import 'package:flutter/material.dart';
import 'package:global_wars/models/play_card/play_card_data.dart';

class UnitCardTitle extends StatelessWidget {
  final int id;

  UnitCardTitle({this.id});

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
      margin: const EdgeInsets.only(bottom: 10.0, left: 20.0),
      child: Stack(
        children: <Widget>[
          Text(
            "${playCardData[id].name}",
            style: TextStyle(
              fontSize: fontPick(playCardData[id].name.length),
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 1
                ..color = Colors.white,
            ),
          ),
          Text(
            "${playCardData[id].name}",
            style: TextStyle(
              fontSize: fontPick(playCardData[id].name.length),
              color: Colors.grey[900],
            ),
          ),
        ],
      ),
    );
  }
}
