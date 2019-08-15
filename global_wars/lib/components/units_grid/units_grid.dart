import 'package:flutter/material.dart';
import 'package:global_wars/models/battle_unit.dart';

import 'units_grid_tile.dart';

class UnitsGrid extends StatelessWidget {
  const UnitsGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: List.generate(battleUnits.length, (index) {
          return UnitsGridTile(id: index);
        }),
      ),
    );
  }
}
