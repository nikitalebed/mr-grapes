import 'package:mr_grapes/models/product.dart';

class ProductService {
  List<Product> getProducts() {
    return [
      Product(
        id: 1,
        title: "Чюрчхелла",
        price: 188,
        description: "Lorem Ipsum is simply dummy text",
        image: "images/products/img.png",
      ),
      Product(
        id: 2,
        title: "Ореховая паста",
        price: 234,
        description: "Lorem Ipsum is simply dummy text",
        image: "images/products/mango.png",
      ),
      Product(
        id: 3,
        title: "Ореховая паста",
        price: 234,
        description: "Lorem Ipsum is simply dummy text",
        image: "images/products/nut_butter.png",
      ),
    ];
  }
}
