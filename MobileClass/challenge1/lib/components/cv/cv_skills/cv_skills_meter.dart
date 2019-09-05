import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CvSkillsMeter extends StatelessWidget {
  final String svgFileName;
  final int level;

  final colorWheel = [
    Colors.red[700],
    Colors.yellow[700],
    Colors.green[700],
    Colors.blue[700],
    Colors.purple[700],
  ];

  CvSkillsMeter({this.svgFileName, this.level, Key key})
      : assert(level > 0 && level < 11),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> iconCount = calculateIcons(level);

    List<Icon> icons = List.generate(iconCount[0], (index) {
      return Icon(
        Icons.star,
        color: colorWheel[(level - 1) ~/ 2],
      );
    })
      ..addAll(List<Icon>.generate(iconCount[1], (index) {
        return Icon(Icons.star_half, color: colorWheel[(level - 1) ~/ 2]);
      }))
      ..addAll(List<Icon>.generate(iconCount[2], (index) {
        return Icon(Icons.star_border, color: colorWheel[(level - 1) ~/ 2]);
      }));

    return Container(
      child: ListTile(
        leading: SvgPicture.asset(
          "assets/images/icons/${svgFileName}.svg",
          height: 40.0,
          width: 40.0,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: icons,
        ),
      ),
    );
  }

  List<int> calculateIcons(int level) {
    int fullStars = level ~/ 2;
    int halfStars = level % 2;
    int emptyStars = (10 - level) ~/ 2;

    return [fullStars, halfStars, emptyStars];
  }
}
