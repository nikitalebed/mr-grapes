import 'package:flutter/material.dart';
import 'package:mr_grapes/screens/cart_screen.dart';
import 'package:mr_grapes/screens/catalog_screen.dart';
import 'package:mr_grapes/screens/home_screen.dart';
import 'package:mr_grapes/screens/order_screen.dart';
import 'package:mr_grapes/screens/sale_screen.dart';

import 'destination.dart';

const List<Destination> allDestinations = <Destination>[
  Destination('Главная', Icons.home),
  Destination('Каталог', Icons.list),
  Destination('Заказы', Icons.local_shipping),
  Destination('Акции', Icons.local_fire_department_outlined),
  Destination('Корзина', Icons.shopping_cart_outlined)
];

const kPrimaryColor = Color(0xFFFFF9F9);
const kAccentColor = Colors.red;
