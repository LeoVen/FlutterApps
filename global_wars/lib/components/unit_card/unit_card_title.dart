import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:global_wars/models/play_card/play_card_data.dart';

class UnitCardTitle extends StatelessWidget {
  final int id;

  UnitCardTitle({this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, bottom: 5.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Stack(
          children: <Widget>[
            AutoSizeText(
              "${playCardData[id].name}",
              style: TextStyle(
                fontSize: 34.0,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 1
                  ..color = Colors.white,
              ),
              maxLines: 1,
            ),
            AutoSizeText(
              "${playCardData[id].name}",
              style: TextStyle(
                fontSize: 34.0,
                color: Colors.grey[900],
              ),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
