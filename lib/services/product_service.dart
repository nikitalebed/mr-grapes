import 'package:flutter/material.dart';
import 'package:mr_grapes/models/product.dart';

class ProductService {
  List<Product> getProducts() {
    return [
      Product(
        id: 1,
        title: "Office Code",
        price: 234,
        size: 12,
        description: "Lorem Ipsum is simply dummy text",
        image: "images/products/img.png",
        color: Color(0xFF3D82AE),
      ),
      Product(
        id: 2,
        title: "Belt Bag",
        price: 234,
        size: 8,
        description: "Lorem Ipsum is simply dummy text",
        image: "images/products/mango.png",
        color: Color(0xFFD3A984),
      ),
      Product(
        id: 3,
        title: "Hang Top",
        price: 234,
        size: 10,
        description: "Lorem Ipsum is simply dummy text",
        image: "images/products/nut_butter.png",
        color: Color(0xFF989493),
      ),
    ];
  }
}
