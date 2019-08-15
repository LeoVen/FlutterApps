import 'package:flutter/material.dart';
import 'package:global_wars/models/battle_unit.dart';

class UnitCardStats extends StatelessWidget {
  final int id;

  UnitCardStats({this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 5.0),
            child: Text("Stats"),
          ),
          Column(
            children: List.generate(BattleUnit.totalStats, (nthStat) {
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
                          BattleUnit.statNames[nthStat],
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
                          children:
                              List.generate(BattleUnit.maxNStat, (statLim) {
                            return ConstrainedBox(
                              constraints: BoxConstraints(
                                minWidth: 25.0,
                                minHeight: 25.0,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  color: battleUnits[id].stats[nthStat] >=
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
