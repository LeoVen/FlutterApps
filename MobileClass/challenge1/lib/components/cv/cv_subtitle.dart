import 'package:challenge1/models/app_localizations.dart';
import 'package:flutter/material.dart';

class CvSubTitle extends StatelessWidget {
  final String text;

  const CvSubTitle(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
      child: Text(
        AppLocalizations.of(context).translate(text),
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}
