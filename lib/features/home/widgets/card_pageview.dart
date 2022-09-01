import 'package:fashion_shop/constant/logo.dart';
import 'package:fashion_shop/constant/oval_button.dart';
import 'package:flutter/material.dart';

class CardPageview extends StatelessWidget {
  final String imageAsset;
  final Color? buttonColor;

  const CardPageview({
    Key? key,
    required this.imageAsset,
    this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageAsset),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Logo(primary: Colors.white),
              Text(
                "TAC",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const Text(
            "Free shipping on\nany products",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          OvalButton(
            onTap: () {},
            width: 100,
            color: buttonColor,
            child: const Text(
              "Shop Now",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
