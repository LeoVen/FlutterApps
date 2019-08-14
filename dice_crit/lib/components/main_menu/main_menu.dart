import 'package:flutter/material.dart';

import '../../util/rand_utils.dart';

class MainMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainMenuState();
  }
}

class _MainMenuState extends State<MainMenu> {
  int rollValue;
  int currentDie;
  final List<int> dieSizes = const [4, 6, 8, 10, 12, 20];

  @override
  void initState() {
    super.initState();

    rollValue = 0;
    currentDie = 0;
  }

  void rollDice() {
    setState(() {
      rollValue = randInt(1, dieSizes[currentDie]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Text("Welcome to Crit Dice"),
        ),
      );
  }
}
