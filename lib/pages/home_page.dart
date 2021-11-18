import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mr_grapes/components/bottom_bar_menu_icon.dart';

import '../components/bottom_bar_menu_destination_view.dart';
import '../constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin<HomePage> {
  int _currentIndex = 0;
  List<BottomBarMenuIcon> allDestinations = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    allDestinations = <BottomBarMenuIcon>[
      BottomBarMenuIcon(AppLocalizations.of(context)!.main, Icons.home),
      BottomBarMenuIcon(AppLocalizations.of(context)!.catalog, Icons.list),
      BottomBarMenuIcon(AppLocalizations.of(context)!.orders, Icons.local_shipping),
      BottomBarMenuIcon(AppLocalizations.of(context)!.sale, Icons.local_fire_department_outlined),
      BottomBarMenuIcon(AppLocalizations.of(context)!.cart, Icons.shopping_cart_outlined)
    ];

    return Scaffold(
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _currentIndex,
          children:
              allDestinations.map<Widget>((BottomBarMenuIcon destination) {
            return BottomBarMenuDestinationView(destination);
          }).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
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
  }
}
