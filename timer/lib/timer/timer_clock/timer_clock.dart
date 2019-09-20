import 'package:flutter/material.dart';
import 'package:timer/timer/timer_clock/timer_clock_painter.dart';

class TimerClock extends StatefulWidget {
  TimerClock({Key key}) : super(key: key);

  _TimerClockState createState() => _TimerClockState();
}

class _TimerClockState extends State<TimerClock> with TickerProviderStateMixin {
  AnimationController controller;
  bool isPlaying;

  String get timerString {
    Duration duration = controller.duration * controller.value;
    int minutes = duration.inMinutes;
    int seconds = duration.inSeconds.remainder(60);
    int milli = duration.inMilliseconds.remainder(100);
    return '$minutes:${seconds.toString().padLeft(2, '0')}:${milli.toString().padLeft(2, '0')}';
  }

  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 200));
    isPlaying = false;
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Container(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Align(
                alignment: FractionalOffset.center,
                child: AspectRatio(
                  aspectRatio: 1.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: AnimatedBuilder(
                          animation: controller,
                          builder: (BuildContext context, Widget child) {
                            return CustomPaint(
                              painter: TimerClockPainter(
                                animation: controller,
                                backgroundColor: Colors.white,
                                color: theme.indicatorColor,
                              ),
                            );
                          },
                        ),
                      ),
                      Align(
                        alignment: FractionalOffset.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Count Down",
                              style: theme.textTheme.subhead,
                            ),
                            AnimatedBuilder(
                              animation: controller,
                              builder: (BuildContext context, Widget child) {
                                return Text(
                                  timerString,
                                  style: theme.textTheme.display3,
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FloatingActionButton(
                    child: AnimatedBuilder(
                        animation: controller,
                        builder: (BuildContext context, Widget child) {
                          return Icon(
                              isPlaying ? Icons.pause : Icons.play_arrow);
                        }),
                    onPressed: () {
                      if (isPlaying) {
                        controller.stop();
                        setState(() {
                          isPlaying = !isPlaying;
                        });
                      } else {
                        controller.reverse(
                            from: controller.value == 0.0
                                ? 1.0
                                : controller.value);
                        setState(() {
                          isPlaying = !isPlaying;
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
