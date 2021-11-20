import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mr_grapes/models/product.dart';

import '../../../constants.dart';
import 'components/product_general_information.dart';
import 'components/product_images.dart';
import 'components/product_nutrition_information.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  ProductDetailsScreen(this.product);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
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

          ProductDetailsDivider(),

          ProductNutritionInformation(),

          ProductDetailsDivider(),

        ],
      ),
    );
  }
}

class ProductDetailsDivider extends StatelessWidget {
  const ProductDetailsDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: const Divider(
        height: 20,
        thickness: 5,
      ),
    );
  }
}

