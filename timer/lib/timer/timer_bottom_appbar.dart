import 'package:flutter/material.dart';

class TimerBottomAppbar extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey;

  const TimerBottomAppbar(this._scaffoldKey, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6.0,
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 20.0),
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
