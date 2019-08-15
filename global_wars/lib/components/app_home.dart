import 'package:flutter/material.dart';
import 'package:global_wars/components/units_grid/units_grid.dart';

class AppHome extends StatefulWidget {
  AppHome({Key key}) : super(key: key);

  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Global Wars"),
        centerTitle: true,
      ),
      body: UnitsGrid(),
    );
  }
}
