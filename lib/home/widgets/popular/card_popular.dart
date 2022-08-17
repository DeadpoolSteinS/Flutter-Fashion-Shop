import 'package:fashion_shop/detail_product/detail_product_screen.dart';
import 'package:flutter/material.dart';

class CardPopular extends StatefulWidget {
  final String title;
  const CardPopular({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<CardPopular> createState() => _CardPopularState();
}

class _CardPopularState extends State<CardPopular> {
  void navigateToDetailScreen() {
    Navigator.pushNamed(
      context,
      DetailProductScreen.routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigateToDetailScreen,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/${widget.title}.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
