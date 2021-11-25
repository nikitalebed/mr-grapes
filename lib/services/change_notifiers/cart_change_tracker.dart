import 'package:flutter/material.dart';
import 'package:mr_grapes/models/product.dart';

class CartChangeTracker with ChangeNotifier {
  final List<Product> _shoppingCart = [];

  get isEmpty => _shoppingCart.isEmpty;

  void addProduct(Product product) {
    print(product);
    _shoppingCart.add(product);
    notifyListeners();
  }

  void removeProduct(Product product) {
    _shoppingCart.remove(product);
    notifyListeners();
  }

  List<Product> getProducts() {
    return List.unmodifiable(_shoppingCart);
  }
}
