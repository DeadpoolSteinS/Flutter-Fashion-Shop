import 'package:flutter/material.dart';

class StockText extends StatelessWidget {
  final String title;
  final Color font;
  final Color background;

  const StockText({
    Key? key,
    required this.title,
    required this.font,
    required this.background,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        title,
        style: TextStyle(color: font, fontSize: 12),
      ),
    );
  }
}
