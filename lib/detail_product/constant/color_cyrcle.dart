import 'package:flutter/material.dart';

class ColorCyrcle extends StatelessWidget {
  final Color color;
  const ColorCyrcle({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
