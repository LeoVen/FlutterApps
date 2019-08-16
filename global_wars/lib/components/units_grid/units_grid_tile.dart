import 'package:flutter/material.dart';
import 'package:global_wars/components/unit_page.dart';
import 'package:global_wars/models/play_card/play_card_data.dart';

class UnitsGridTile extends StatelessWidget {
  final int id;

  UnitsGridTile({this.id, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => UnitPage(id: id)));
        },
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              image:
                  AssetImage('assets/images/${playCardData[id].imageFileName}.jpg'),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              width: 1,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          margin: const EdgeInsets.all(8.0),
        ),
      ),
    );
  }
}
