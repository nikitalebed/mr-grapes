import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mr_grapes/models/product.dart';

import '../constants.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  ProductDetailsScreen(this.product);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.image,
              fit: BoxFit.fill,
            ),
            Text(
              product.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: kAccentColor, fontWeight: FontWeight.bold),
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(text: "Price\n"),
                  TextSpan(
                    text: "\$${product.price}",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: kAccentColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
