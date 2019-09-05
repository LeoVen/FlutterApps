import 'package:challenge1/components/curriculum_vitae.dart';
import 'package:challenge1/models/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curriculum Vitae',
      home: CurriculumVitae(),
      supportedLocales: [
        const Locale('en'),
        const Locale('es'),
        const Locale('pt'),
      ],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        if (locale == null) return supportedLocales.first;

        for (Locale supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode) {
            print(locale);
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
    );
  }
}
