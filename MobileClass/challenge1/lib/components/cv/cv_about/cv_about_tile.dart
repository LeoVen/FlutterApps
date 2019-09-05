import 'package:challenge1/models/app_localizations.dart';
import 'package:flutter/material.dart';

class CvAboutTile extends StatelessWidget {
  final IconData iconData;
  final String textKey;
  Color iconColor;

  CvAboutTile(
      {this.iconData, this.textKey, this.iconColor, Key key})
      : super(key: key) {
        this.iconColor = iconColor ?? Colors.blue[800];
      }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: iconColor,
      ),
      title: Text(
        AppLocalizations.of(context).translate(textKey),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
