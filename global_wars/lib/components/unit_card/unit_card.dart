import 'package:flutter/material.dart';
import 'package:global_wars/components/unit_card/unit_card_abilities.dart';
import 'package:global_wars/components/unit_card/unit_card_indicators.dart';

import 'unit_card_description.dart';
import 'unit_card_image.dart';
import 'unit_card_stats.dart';
import 'unit_card_cost.dart';

class UnitCard extends StatelessWidget {
  final int id;
  final BorderRadius borderRadius;

  UnitCard(this.id,
      {this.borderRadius = const BorderRadius.all(Radius.circular(20.0))});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
        elevation: 8.0,
        margin: const EdgeInsets.all(40.0),
        child: ClipRRect(
          borderRadius: borderRadius,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    UnitCardImage(id),
                    UnitCardIndicadors(id),
                    UnitCardDescription(id),
                    UnitCardStats(id),
                    UnitCardAbilities(id),
                    UnitCardCost(id),
                    Container(padding: const EdgeInsets.only(top: 40.0)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
