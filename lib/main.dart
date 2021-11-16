import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'constants.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MrGrapesShop());
}

class MrGrapesShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Mr-Grapes',
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ru', ''),
          Locale('en', ''),
        ],
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          backgroundColor: kPrimaryColor,
          colorScheme: const ColorScheme.light(
            secondary: kAccentColor
          )
        ),
        home: HomePage());
  }
}

