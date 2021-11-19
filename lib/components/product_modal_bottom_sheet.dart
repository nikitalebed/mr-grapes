
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mr_grapes/models/product.dart';
import 'package:mr_grapes/screens/details_screen.dart';

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
              const Icon(
                Icons.arrow_drop_up_outlined,
                size: 50.0,
              ),
              DetailsScreen(product),
            ],
          ),
        ),
      ),
    );
  }
}
