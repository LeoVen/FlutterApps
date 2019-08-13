import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DifficultyMenu extends StatefulWidget {
  final List<String> difficultyName = [
    "Baby",
    "Stupid Kid",
    "Smart Pants",
    "Grown Up",
    "Casual Nerd",
    "Nerd",
    "Equation Devourer",
    "Integration Killer",
    "Math Genius",
    "Math Machine",
    "Math God",
  ];
  final Function(int) callback;
  final int value;

  DifficultyMenu(this.callback, this.value) : assert(value <= 10);

  @override
  _DifficultyMenuState createState() => _DifficultyMenuState();
}

class _DifficultyMenuState extends State<DifficultyMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Text(
              "Current Difficulty: ${widget.difficultyName[widget.value]}"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Slider(
                value: widget.value.toDouble(),
                divisions: 10,
                min: 0.0,
                // this needs to match the maximum index of _min and _max in _AppHomeState
                max: 10.0,
                activeColor: Colors.indigoAccent,
                onChanged: (d) => widget.callback(d.toInt()),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
