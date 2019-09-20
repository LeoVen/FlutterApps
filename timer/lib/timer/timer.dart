import 'package:flutter/material.dart';
import 'package:timer/timer/timer_bottom_appbar.dart';
import 'package:timer/timer/timer_clock/timer_clock.dart';
import 'package:timer/timer/timer_drawer.dart';

class Timer extends StatefulWidget {
  Timer({Key key}) : super(key: key);

  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Bottom App Bar'),
        automaticallyImplyLeading: false,
      ),
      drawer: Drawer(
        child: TimerDrawer(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: TimerBottomAppbar(_scaffoldKey),
      body: TimerClock(),
    );
  }
}
