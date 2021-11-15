import 'package:flutter/material.dart';
import 'package:mr_grapes/pages/profile_page.dart';

import '../constants.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.0, right: 15.0),
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'images/logo.png',
          ),
          GestureDetector(
            child: const Icon(
              Icons.account_circle,
              color: kAccentColor,
              size: 30.0,
            ),
            onTap: () {
              showModalBottomSheet(
                context: context,
                // isScrollControlled: true,
                builder: (context) => ProfilePage(),
              );
            },
          )
        ],
      ),
    );
  }
}
