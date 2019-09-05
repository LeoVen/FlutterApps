import 'package:flutter/material.dart';

class CvImage extends StatelessWidget {
  const CvImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage("assets/images/hero.jfif"),
        ),
      ),
    );
  }
}
