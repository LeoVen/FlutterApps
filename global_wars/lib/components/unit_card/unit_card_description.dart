import 'package:flutter/material.dart';
import 'package:global_wars/models/play_card/play_card_data.dart';

class UnitCardDescription extends StatelessWidget {
  final int id;
  final double margin;

  UnitCardDescription(this.id, {this.margin = 10.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      child: Text(
        "      ${playCardData[id].description.replaceAll(RegExp('\n'), '\n      ')}",
        textAlign: TextAlign.justify,
        style: TextStyle(
          color: Colors.grey[600],
        ),
      ),
    );
  }
}
