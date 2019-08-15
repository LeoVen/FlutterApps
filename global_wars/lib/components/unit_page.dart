import 'package:flutter/material.dart';

import 'package:global_wars/components/unit_card/unit_card.dart';

class UnitPage extends StatelessWidget {
  final int id;

  UnitPage({this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Global Wars"),
        centerTitle: true,
      ),
      body: UnitCard(id),
    );
  }
}
