import 'package:flutter/material.dart';
import 'package:global_wars/models/play_card/play_card_data.dart';
import 'package:global_wars/models/play_card/play_card_settings.dart';
import 'package:global_wars/models/play_card/play_card_types.dart';

class UnitCardIndicadors extends StatelessWidget {
  final int id;
  final double backOpacity = 0.4;
  final double iconOpacity = 0.7;
  final double margin;

  UnitCardIndicadors(this.id, {this.margin = 10.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(backOpacity),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        border: Border.all(
          color: Colors.orange[100],
          width: 0.5,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            // Card rarity icon
            children: <Widget>[
              Icon(Icons.star,
                  color: PlayCardSettings
                      .colorRarity[playCardData[id].cardRarity]),
            ],
          ),
          Column(
            // Effectiveness icons
            children: <Widget>[
              Row(
                children: List.generate(PlayCardType.values.length, (index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 4.0, right: 4.0),
                    child: Icon(
                      PlayCardSettings.typeIconsByIndex[index],
                      color: PlayCardSettings.colorEffectiveness[
                              playCardData[id].effectiveness[index]]
                          .withOpacity(iconOpacity),
                    ),
                  );
                }),
              ),
            ],
          ),
          Column(
            // Card type icon
            children: <Widget>[
              PlayCardSettings.subtypeIcons[playCardData[id].cardSubType],
            ],
          ),
        ],
      ),
    );
  }
}
