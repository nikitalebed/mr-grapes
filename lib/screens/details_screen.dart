import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mr_grapes/components/description.dart';
import 'package:mr_grapes/components/product_title_with_image.dart';
import 'package:mr_grapes/models/product.dart';

import '../constants.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  DetailsScreen(this.product);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        // backgroundColor: product.color,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: size.height,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: size.height * 0.3),
                        padding: EdgeInsets.only(
                          top: size.height * 0.12,
                          left: kDefaultPaddin,
                          right: kDefaultPaddin,
                        ),
                        // height: 500,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Description(product),
                          ],
                        ),
                      ),
                      ProductTitleWithImage(product)
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
