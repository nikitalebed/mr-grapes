import 'package:flutter/material.dart';
import 'package:mr_grapes/models/product.dart';

class ProductImagesComponent extends StatelessWidget {
  final Product product;

  ProductImagesComponent(this.product);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300.0,
      child: PageView(
        children: [
          Image.asset(
            product.image,
            fit: BoxFit.fill,
          ),
          Image.asset(
            product.image,
            fit: BoxFit.fill,
          ),
          Image.asset(
            product.image,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
