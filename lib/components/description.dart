import 'package:flutter/material.dart';
import 'package:mr_grapes/models/product.dart';

import '../../../constants.dart';

class Description extends StatelessWidget {

  final Product product;

  Description(this.product);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
