import 'package:flutter/material.dart';

import 'unit_card_description.dart';
import 'unit_card_image.dart';
import 'unit_card_stats.dart';
import 'unit_card_cost.dart';

class UnitCard extends StatelessWidget {
  final int id;

  UnitCard(this.id);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        elevation: 8.0,
        margin: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UnitCardImage(id: id),
            UnitCardDescription(id: id),
            UnitCardStats(id: id),
            UnitCardCost(id: id),
          ],
        ),
      ),
    );
  }
}
