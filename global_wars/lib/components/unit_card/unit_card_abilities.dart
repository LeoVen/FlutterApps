import 'package:flutter/material.dart';

class UnitCardAbilities extends StatelessWidget {
  final int id;
  final double margin;

  UnitCardAbilities(this.id, {this.margin = 10.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 60.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Ability 1"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
