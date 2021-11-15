import 'package:flutter/material.dart';

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
        theme: ThemeData(
          primaryColor: kPrimaryColor,
        ),
        home: HomePage());
  }
}

