import 'package:fashion_shop/detail_product/detail_product_screen.dart';
import 'package:fashion_shop/models/product_model.dart';
import 'package:flutter/material.dart';

class CardPopular extends StatefulWidget {
  final Product product;

  const CardPopular({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<CardPopular> createState() => _CardPopularState();
}

class _CardPopularState extends State<CardPopular> {
  void navigateToDetailScreen() {
    Navigator.pushNamed(
      context,
      DetailProductScreen.routeName,
      arguments: widget.product,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigateToDetailScreen,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(widget.product.images[0]),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
