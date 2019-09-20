import 'package:flutter/material.dart';

class UnitCardAbilities extends StatelessWidget {
  final int id;
  final double margin;

  UnitCardAbilities(this.id, {this.margin = 10.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.ac_unit),
              SizedBox(width: 10.0),
              Text("Ability 1"),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.visibility),
              SizedBox(width: 10.0),
              Text("Ability 2"),
            ],
          ),
        ],
      ),
    );
  }
}
