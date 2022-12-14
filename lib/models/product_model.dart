import 'dart:convert';

class Product {
  final String name;
  // final String description;
  final int quantity;
  final List<String> images;
  final String category;
  final double price;
  final String merk;
  final String? id;

  Product({
    required this.name,
    // required this.description,
    required this.quantity,
    required this.images,
    required this.category,
    required this.price,
    required this.merk,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      // 'description': description,
      'quantity': quantity,
      'images': images,
      'category': category,
      'price': price,
      'merk': merk,
      'id': id,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'] ?? '',
      // description: map['description'] ?? '',
      quantity: map['quantity'],
      images: List<String>.from(map['images']),
      category: map['category'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      merk: map['merk'] ?? '',
      id: map['_id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
