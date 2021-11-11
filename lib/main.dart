import 'package:flutter/material.dart';
import 'package:mr_grapes/pages/home_page.dart';

void main() {
  runApp(MrGrapesShop());
}

class MrGrapesShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mr-Grapes',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage()
    );
  }
}

class MrGrapesHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              height: 60.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/logo.png',
                  ),
                  const Icon(
                    Icons.account_circle,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

