import 'package:flutter/material.dart';
import 'package:global_wars/components/unit_card/unit_card_title.dart';
import 'package:global_wars/models/play_card/play_card_data.dart';

class UnitCardImage extends StatelessWidget {
  final int id;

  UnitCardImage(this.id);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
          children: <Widget>[
            Image.asset("assets/images/${playCardData[id].imageFileName}.jpg"),
            Positioned(
              left: 0.0,
              bottom: 0.0,
              child: UnitCardTitle(id: id),
            ),
          ],
        ),
    );
  }
}
