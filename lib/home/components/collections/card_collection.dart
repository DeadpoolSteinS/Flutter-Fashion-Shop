import 'package:fashion_shop/constant/g_colors.dart';
import 'package:flutter/material.dart';

class CardCollection extends StatelessWidget {
  final String title;
  const CardCollection({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      height: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/$title.png'),
                // fit: BoxFit.cover,
              ),
              color: GColors.bgGray,
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          Text(title),
        ],
      ),
    );
  }
}
