import 'package:flutter/material.dart';

import 'components/botttom_bar_menu_icon.dart';


const List<BottomBarMenuIcon> allDestinations = <BottomBarMenuIcon>[
  BottomBarMenuIcon('Главная', Icons.home),
  BottomBarMenuIcon('Каталог', Icons.list),
  BottomBarMenuIcon('Заказы', Icons.local_shipping),
  BottomBarMenuIcon('Акции', Icons.local_fire_department_outlined),
  BottomBarMenuIcon('Корзина', Icons.shopping_cart_outlined)
];

const kPrimaryColor = Color(0xFFFFF9F9);
const kAccentColor = Colors.red;
