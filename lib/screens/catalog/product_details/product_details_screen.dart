import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mr_grapes/models/product.dart';

import '../../../constants.dart';
import 'components/product_general_information.dart';
import 'components/product_images.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  ProductDetailsScreen(this.product);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: ListView(
        children: [
          ProductImagesComponent(product),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: kAccentColor, fontWeight: FontWeight.bold),
          ),

          ProductGeneralInformation(product),
        ],
      ),
    );
  }
}
