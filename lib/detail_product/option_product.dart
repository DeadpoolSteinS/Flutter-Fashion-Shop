import 'package:fashion_shop/constant/g_colors.dart';
import 'package:fashion_shop/constant/stock_text.dart';
import 'package:flutter/material.dart';

class OptionProduct extends StatelessWidget {
  const OptionProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Zara - Jacket With\nPockets",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              StockText(
                  title: "in Stock",
                  font: GColors.primaryBtn,
                  background: Color.fromARGB(47, 75, 179, 59))
            ],
          ),
        ],
      ),
    );
  }
}
