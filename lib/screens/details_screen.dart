import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mr_grapes/models/product.dart';

import '../constants.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  DetailsScreen(this.product);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              product.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: kAccentColor, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: kDefaultPaddin),
            Row(
              children: <Widget>[
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
                const SizedBox(width: kDefaultPaddin),
                Expanded(
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
