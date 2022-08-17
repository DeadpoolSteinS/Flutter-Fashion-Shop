import 'package:fashion_shop/constant/g_colors.dart';
import 'package:flutter/material.dart';

class TitleWithBtn extends StatelessWidget {
  final String title;
  final String btn;

  const TitleWithBtn({
    Key? key,
    required this.title,
    this.btn = "Show All",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
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
