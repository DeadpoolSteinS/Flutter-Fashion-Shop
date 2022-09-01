import 'package:fashion_shop/constant/g_colors.dart';
import 'package:flutter/material.dart';

class SizeProductCyrcle extends StatelessWidget {
  final String size;

  const SizeProductCyrcle({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: GColors.fontColor,
        ),
      ),
      alignment: Alignment.center,
      child: Text(size),
    );
  }
}
