import 'package:challenge1/components/cv/cv_skills/cv_skills_meter.dart';
import 'package:challenge1/components/cv/cv_subtitle.dart';
import 'package:flutter/material.dart';

class CvSkills extends StatelessWidget {
  const CvSkills({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CvSubTitle('skills'),
          CvSkillsMeter(
            svgFileName: "c",
            level: 10,
          ),
          CvSkillsMeter(
            svgFileName: "python",
            level: 7,
          ),
          CvSkillsMeter(
            svgFileName: "java",
            level: 7,
          ),
          CvSkillsMeter(
            svgFileName: "javascript",
            level: 6,
          ),
          CvSkillsMeter(
            svgFileName: "csharp",
            level: 5,
          ),
          CvSkillsMeter(
            svgFileName: "cpp",
            level: 3,
          ),
          CvSkillsMeter(
            svgFileName: "go",
            level: 2,
          ),
          CvSkillsMeter(
            svgFileName: "ruby",
            level: 1,
          ),
        ],
      ),
    );
  }
}
