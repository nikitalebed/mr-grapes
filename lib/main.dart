import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mr_grapes/services/change_notifiers/bottom_bar_index_tracker.dart';
import 'package:mr_grapes/services/change_notifiers/cart_change_tracker.dart';
import 'package:provider/provider.dart';

import 'constants.dart';
import 'pages/home_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => BottomBarIndexTracker(),
        ),
        ChangeNotifierProvider(
          create: (_) => CartChangeTracker(),
        ),
      ],
      child: MrGrapesShop(),
    ),
  );
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
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage());
  }
}

