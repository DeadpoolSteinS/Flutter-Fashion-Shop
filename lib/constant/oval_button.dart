import 'package:fashion_shop/constant/g_colors.dart';
import 'package:flutter/material.dart';

class OvalButton extends StatelessWidget {
  final String text;
  const OvalButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 26,
        ),
        decoration: BoxDecoration(
          color: GColors.primaryBtn,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
