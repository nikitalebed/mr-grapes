import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
  Map<String, Widget> destinationScreens = {};

  @override
  Widget build(BuildContext context) {
    destinationScreens = {
      AppLocalizations.of(context)!.main: HomeScreen(),
      AppLocalizations.of(context)!.catalog: CatalogScreen(),
      AppLocalizations.of(context)!.orders: OrderScreen(),
      AppLocalizations.of(context)!.sale: SaleScreen(),
      AppLocalizations.of(context)!.cart: CartScreen(),
    };

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ListView(
        children: [
          TopBar(),
          Container(
            // padding: const EdgeInsets.all(32.0),
            alignment: Alignment.center,
            child: destinationScreens['${widget.destination.title}'],
          ),
        ],
      ),
    );
  }
}
