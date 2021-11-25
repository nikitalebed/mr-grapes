import 'package:mr_grapes/models/product.dart';

class CartData {

  final List<Product> _shoppingCart = [];

  void addProduct(Product product) {
    _shoppingCart.add(product);
  }

  void removeProduct(Product product) {
    _shoppingCart.remove(product);
  }

  List<Product> getProducts() {
    return List.unmodifiable(_shoppingCart);
  }

}
