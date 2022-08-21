import 'package:fashion_shop/constant/g_colors.dart';
import 'package:flutter/material.dart';

class TitleWithBtn extends StatelessWidget {
  final String title;
  final String btn;
  final double sizeTitle;

  const TitleWithBtn({
    Key? key,
    required this.title,
    this.btn = "Show All",
    this.sizeTitle = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: sizeTitle,
          ),
        ),
        Text(
          btn,
          style: const TextStyle(
            color: GColors.secondaryBtn,
          ),
        )
      ],
    );
  }
}
