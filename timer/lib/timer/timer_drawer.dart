import 'package:flutter/material.dart';

class TimerDrawer extends StatelessWidget {
  const TimerDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        right: false,
        child: DrawerHeader(
          child: Text("Timer"),
        ),
      ),
    );
  }
}
