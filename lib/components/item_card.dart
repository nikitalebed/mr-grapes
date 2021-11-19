import 'package:flutter/material.dart';
import 'package:mr_grapes/models/product.dart';
import 'package:mr_grapes/screens/details_screen.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;

  ItemCard(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => FractionallySizedBox(
            heightFactor: 0.96,

            child: Container(
              color: Color(0xff757575),
              child: Container(
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),

                child: Column(
                  children: [
                    const Icon(
                      Icons.arrow_drop_up_outlined,
                      size: 50.0,
                    ),
                    DetailsScreen(product),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPaddin / 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              // products is out demo list
              product.title,
              style: const TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
