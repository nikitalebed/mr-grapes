import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mr_grapes/services/change_notifiers/bottom_bar_index_tracker.dart';
import 'package:mr_grapes/screens/components/bottom_bar_menu_destination_view.dart';
import 'package:mr_grapes/screens/components/bottom_bar_menu_icon.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<BottomBarMenuIcon> allDestinations = <BottomBarMenuIcon>[
      BottomBarMenuIcon(AppLocalizations.of(context)!.main, Icons.home),
      BottomBarMenuIcon(AppLocalizations.of(context)!.catalog, Icons.list),
      BottomBarMenuIcon(
          AppLocalizations.of(context)!.orders, Icons.local_shipping),
      BottomBarMenuIcon(AppLocalizations.of(context)!.sale,
          Icons.local_fire_department_outlined),
      BottomBarMenuIcon(
          AppLocalizations.of(context)!.cart, Icons.shopping_cart_outlined)
    ];

    return Consumer<BottomBarIndexTracker>(
        builder: (context, indexTracker, child) {
      return Scaffold(
        body: SafeArea(
          top: false,
          child: IndexedStack(
            index: indexTracker.currentIndex,
            children:
                allDestinations.map<Widget>((BottomBarMenuIcon destination) {
              return BottomBarMenuDestinationView(destination);
            }).toList(),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: indexTracker.currentIndex,
          onTap: (int index) {
            indexTracker.setIndex(index);
          },
          items: allDestinations.map((BottomBarMenuIcon destination) {
            return BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Icon(destination.icon),
                  // const Positioned(
                  //   top: 0.0,
                  //   right: 0.0,
                  //   child: Icon(Icons.brightness_1, size: 8.0,
                  //       color: Colors.redAccent),
                  // )
                ],
              ),
              // backgroundColor: destination.color,
              title: Text(destination.title),
            );
          }).toList(),
          selectedItemColor: kAccentColor,
        ),
      );
    });
  }
}
