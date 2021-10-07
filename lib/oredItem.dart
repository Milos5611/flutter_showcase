import 'package:flutter_showcase/products.dart';

class OrderItem {
  Product product;

  String? selectedSize;

  String? selectedColor;

  OrderItem({required this.product, this.selectedSize, this.selectedColor});
}
