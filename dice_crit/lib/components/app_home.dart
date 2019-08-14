import 'package:flutter/material.dart';

import './simple_dice_rolls/simple_dice_rolls.dart';
import './main_menu/main_menu.dart';

class AppHome extends StatefulWidget {
  AppHome({Key key}) : super(key: key);

  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Welcome to Dice Crit',
        ),
      ),
      body: menuIndex == 0 ? MainMenu() : SimpleDiceRolls(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.indigo],
                ),
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.of(context).pop();
                setState(() {
                  menuIndex = 0;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_right),
              title: Text("Simple Dice Rolls"),
              onTap: () {
                Navigator.of(context).pop();
                setState(() {
                  menuIndex = 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
