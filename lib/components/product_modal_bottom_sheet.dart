
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mr_grapes/models/product.dart';
import 'package:mr_grapes/screens/product_details_screen.dart';

import '../constants.dart';

class ProductModalBottomSheet extends StatelessWidget {
  const ProductModalBottomSheet({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.96,

      child: Container(
        color: const Color(0xff757575),
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
              const Expanded(
                flex: 1,
                child: Icon(
                  Icons.arrow_drop_up_outlined,
                  size: 50.0,
                ),
              ),
              Expanded(
                flex: 8,
                child: ProductDetailsScreen(product),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(Icons.arrow_back_ios),
                    Container(
                      // TODO hardcoded width/height is not good.. need to refactor
                      width: 220.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        color: kAccentColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                      ),
                      child: const Center(
                        child: Text('Add to Shopping Cart', style: TextStyle(
                          color: kPrimaryColor
                        ),),
                      ),
                    ),
                    const Icon(Icons.shopping_cart_outlined)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

