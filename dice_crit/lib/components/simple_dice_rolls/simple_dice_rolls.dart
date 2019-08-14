import 'package:flutter/material.dart';

import '../../util/rand_utils.dart';

class SimpleDiceRolls extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SimpleDiceRollsState();
  }
}

class _SimpleDiceRollsState extends State<SimpleDiceRolls> {
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
          child: Column(
            children: <Widget>[
              Container(
                child: Text(
                  "$rollValue",
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              ),
              RaisedButton(
                child: Text("Roll"),
                color: Colors.amber,
                elevation: 4,
                onPressed: rollDice,
                textColor: Colors.white,
              ),
              Container(
                child: Text("Select Die Size"),
                margin: const EdgeInsets.only(top: 40.0),
              ),
              GridView(
                children: List.generate(dieSizes.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        currentDie = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/dices/d${dieSizes[index]}.png'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        border: Border.all(
                          color: currentDie == index ? Colors.green : Colors.blue,
                          width: 3,
                        ),
                      ),
                      margin: const EdgeInsets.all(8.0),
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  );
                }),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      );
  }
}
