import 'package:challenge1/components/cv/cv_about/cv_about.dart';
import 'package:challenge1/components/cv/cv_image.dart';
import 'package:challenge1/components/cv/cv_skills/cv_skills.dart';
import 'package:challenge1/components/cv/cv_title.dart';
import 'package:flutter/material.dart';

class CurriculumVitae extends StatelessWidget {
  const CurriculumVitae({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Curriculum Vitae"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: Scrollbar(
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              CvTitle(),
              CvImage(),
              CvAbout(),
              CvSkills(),
            ],
          ),
        ),
      ),
    );
  }
}
