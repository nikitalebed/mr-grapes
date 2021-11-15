import 'package:flutter/material.dart';
import 'package:mr_grapes/components/botttom_bar_menu_icon.dart';

import '../components/bottom_bar_menu_destination_view.dart';
import '../constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
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
            icon: Icon(destination.icon),
            // backgroundColor: destination.color,
            title: Text(destination.title),
          );
        }).toList(),
        selectedItemColor: kAccentColor,
      ),
    );
  }
}
