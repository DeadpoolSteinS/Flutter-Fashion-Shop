import 'package:fashion_shop/constant/oval_button.dart';
import 'package:flutter/material.dart';

class ItemPageview extends StatelessWidget {
  final String imageAsset;
  final String textButton;
  final VoidCallback? onTap;

  const ItemPageview({
    Key? key,
    required this.imageAsset,
    this.textButton = "Next",
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageAsset),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 24,
              ),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black87,
                    Color(0x00000000),
                  ],
                ),
              ),
              child: Column(
                children: [
                  const Text(
                    "Best place for buy anything in one once",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Browse over 10m+ trendy products and choose what you like",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 16),
                  OvalButton(
                    verticalPadding: 16,
                    onTap: onTap ?? () {},
                    child: Text(
                      textButton,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
