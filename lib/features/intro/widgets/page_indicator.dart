import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final bool isActive;
  const PageIndicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      height: isActive ? 16 : 8,
      margin: const EdgeInsets.only(right: 4),
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white24,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
