import 'package:flutter/material.dart';
import 'package:mr_grapes/models/product.dart';

import '../../../../constants.dart';


class ProductGeneralInformation extends StatelessWidget {

  final Product product;

  ProductGeneralInformation(this.product);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '\$${product.price}',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
