import 'dart:convert';

import 'package:fashion_shop/models/product_model.dart';

class Cart {
  final Product product;
  final int quantity;
  final String? id;

  Cart({
    required this.product,
    required this.quantity,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'product': product,
      'quantity': quantity,
      'id': id,
    };
  }

  factory Cart.fromMap(Map<String, dynamic> map) {
    return Cart(
      product: Product.fromMap(map['product']),
      quantity: map['quantity'],
      id: map['_id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Cart.fromJson(String source) => Cart.fromMap(json.decode(source));
}
