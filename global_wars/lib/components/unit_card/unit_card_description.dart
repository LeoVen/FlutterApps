import 'package:flutter/material.dart';
import 'package:global_wars/models/battle_unit.dart';

class UnitCardDescription extends StatelessWidget {
  final int id;

  UnitCardDescription({this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 100,
        ),
        child: Container(
          margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
          child: Text(
            "${battleUnits[id].description}",
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
        ),
      ),
    );
  }
}
