import 'package:fashion_shop/constant/g_colors.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Reng',
            style: TextStyle(
              color: GColors.fontColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'vo',
            style: TextStyle(
              color: GColors.secondaryBtn,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
