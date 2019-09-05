import 'package:challenge1/components/cv/cv_about/cv_about_tile.dart';
import 'package:challenge1/components/cv/cv_subtitle.dart';
import 'package:flutter/material.dart';

class CvAbout extends StatelessWidget {
  const CvAbout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CvSubTitle('about_me'),
          CvAboutTile(
            textKey: 'university',
            iconData: Icons.school,
          ),
          CvAboutTile(
            textKey: 'course',
            iconData: Icons.book,
          ),
          CvAboutTile(
            textKey: 'phone',
            iconData: Icons.phone,
          ),
          CvAboutTile(
            textKey: 'email',
            iconData: Icons.email,
          ),
          CvAboutTile(
            textKey: 'github',
            iconData: Icons.group_add,
          ),
        ],
      ),
    );
  }
}
