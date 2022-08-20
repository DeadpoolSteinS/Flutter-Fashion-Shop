import 'dart:convert';

class Product {
  final String title;
  final int price;
  final String image;

  Product({
    required this.title,
    required this.price,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'price': price,
      'image': image,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      title: map['Title'] ?? '',
      price: map['Price'] ?? 0,
      image: map['Image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
