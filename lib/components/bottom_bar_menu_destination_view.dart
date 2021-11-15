import 'package:flutter/material.dart';
import 'package:mr_grapes/components/top_bar.dart';
import 'package:mr_grapes/constants.dart';
import 'package:mr_grapes/screens/cart_screen.dart';
import 'package:mr_grapes/screens/catalog_screen.dart';
import 'package:mr_grapes/screens/home_screen.dart';
import 'package:mr_grapes/screens/order_screen.dart';
import 'package:mr_grapes/screens/sale_screen.dart';

import 'botttom_bar_menu_icon.dart';



class BottomBarMenuDestinationView extends StatefulWidget {
  BottomBarMenuDestinationView(this.destination);

  final BottomBarMenuIcon destination;

  @override
  _BottomBarMenuDestinationViewState createState() => _BottomBarMenuDestinationViewState();
}

class _BottomBarMenuDestinationViewState extends State<BottomBarMenuDestinationView> {
  Map<String, Widget> destinationScreens = {
    'Главная': HomeScreen(),
    'Каталог': CatalogScreen(),
    'Заказы': OrderScreen(),
    'Акции': SaleScreen(),
    'Корзина': CartScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ListView(
        children: [
          TopBar(),
          Container(
            padding: const EdgeInsets.all(32.0),
            alignment: Alignment.center,
            child: destinationScreens['${widget.destination.title}'],
          ),
        ],
      ),
    );
  }
}
