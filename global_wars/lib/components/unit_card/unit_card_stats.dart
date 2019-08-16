import 'package:flutter/material.dart';
import 'package:global_wars/models/play_card/play_card_data.dart';
import 'package:global_wars/models/play_card/play_card_settings.dart';
import 'package:global_wars/models/play_card/play_card_types.dart';

class UnitCardStats extends StatelessWidget {
  final int id;
  final double margin;

  UnitCardStats(this.id, {this.margin = 10.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 5.0),
            child: Text(
              "Stats",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          Column(
            children: List.generate(PlayCardStats.values.length, (nthStat) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 60.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          PlayCardSettings
                              .nameStats[PlayCardStats.values[nthStat]],
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: List.generate(PlayCardSettings.maxStat,
                              (statLim) {
                            // get current width to make this table fit in the screen
                            double w = MediaQuery.of(context).size.width / 18;
                            return ConstrainedBox(
                              constraints: BoxConstraints(
                                minWidth: w,
                                minHeight: w,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  color: playCardData[id].stats[nthStat] >=
                                          statLim + 1
                                      ? Colors.green
                                      : Colors.grey[200],
                                ),
                                margin: const EdgeInsets.all(2.0),
                              ),
                            );
                          }),
                        ),
                      ],
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
