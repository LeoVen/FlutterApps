import 'package:flutter/material.dart';
import 'package:global_wars/models/battle_unit.dart';

class UnitCardCost extends StatelessWidget {
  final int id;

  UnitCardCost({this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Text("Cost"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(BattleUnit.totalResources, (index) {
              return Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: Text("${battleUnits[id].resources[index]}"),
                  ),
                  Icon(
                    BattleUnit.resourceIcons[index],
                    color: BattleUnit.iconColors[index],
                  ),
                  Text(BattleUnit.resourceNames[index]),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
