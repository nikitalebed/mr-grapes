import 'package:flutter/material.dart';
import 'package:mr_grapes/components/top_bar.dart';
import 'package:mr_grapes/constants.dart';
import 'package:mr_grapes/screens/cart_screen.dart';
import 'package:mr_grapes/screens/catalog_screen.dart';
import 'package:mr_grapes/screens/home_screen.dart';
import 'package:mr_grapes/screens/order_screen.dart';
import 'package:mr_grapes/screens/sale_screen.dart';

import 'destination.dart';

class DestinationView extends StatefulWidget {
  DestinationView(this.destination);

  final Destination destination;

  @override
  _DestinationViewState createState() => _DestinationViewState();
}

class _DestinationViewState extends State<DestinationView> {
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
