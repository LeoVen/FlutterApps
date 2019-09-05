import 'package:flutter/material.dart';

class CvTitle extends StatelessWidget {
  const CvTitle({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      alignment: Alignment.center,
      child: Text(
        "Leonardo Vencovsky",
        style: TextStyle(
          fontSize: 24.0,
        ),
      ),
    );
  }
}
