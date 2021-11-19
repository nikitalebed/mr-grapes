
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mr_grapes/models/product.dart';
import 'package:mr_grapes/screens/catalog/product_details/product_details_screen.dart';

import '../../../constants.dart';

class ProductModalBottomSheet extends StatelessWidget {
  final Product product;

  ProductModalBottomSheet({
    required this.product,
  });

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
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Add to the shopping cart: $product');
                      },

                      child: Container(
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

