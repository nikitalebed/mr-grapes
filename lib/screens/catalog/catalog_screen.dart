import 'package:flutter/material.dart';
import 'package:mr_grapes/screens/catalog/components/categories.dart';
import 'package:mr_grapes/screens/catalog/components/product_card.dart';
import 'package:mr_grapes/models/product.dart';
import 'package:mr_grapes/services/product_service.dart';

import '../../constants.dart';

class CatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Product> products = ProductService().getProducts();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Categories(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: GridView.builder(
            itemCount: products.length,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: kDefaultPadding,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) => ProductCard(
              products[index],
            ),
          ),
        ),
      ],
    );
  }
}
