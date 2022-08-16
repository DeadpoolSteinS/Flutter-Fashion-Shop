import 'package:fashion_shop/constant/g_colors.dart';
import 'package:fashion_shop/constant/logo.dart';
import 'package:flutter/material.dart';

class CardViewpage extends StatelessWidget {
  const CardViewpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: GColors.cardBg,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Logo(primary: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}
