import 'package:flutter/material.dart';
import 'package:global_wars/models/play_card/play_card_data.dart';
import 'package:global_wars/models/play_card/play_card_settings.dart';
import 'package:global_wars/models/play_card/play_card_types.dart';

class UnitCardCost extends StatelessWidget {
  final int id;
  final double margin;

  UnitCardCost(this.id, {this.margin = 10.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              "Cost",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(PlayCardCosts.values.length, (index) {
              return Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: Text("${playCardData[id].costs[index]}"),
                  ),
                  PlayCardSettings.costIconsByIndex[index],
                  Container(
                    margin: const EdgeInsets.only(top: 6.0),
                    child: Text(
                      PlayCardSettings.nameCostsByIndex[index],
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
