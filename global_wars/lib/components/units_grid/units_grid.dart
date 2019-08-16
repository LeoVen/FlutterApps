import 'package:flutter/material.dart';
import 'package:global_wars/models/play_card/play_card_data.dart';

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
        children: List.generate(playCardData.length, (index) {
          return UnitsGridTile(id: index);
        }),
      ),
    );
  }
}
