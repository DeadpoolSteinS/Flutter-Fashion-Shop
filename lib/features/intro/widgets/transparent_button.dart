import 'package:flutter/material.dart';

class TransparentButton extends StatelessWidget {
  final Widget child;
  final Color? color;
  const TransparentButton({
    Key? key,
    required this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 2,
        ),
        decoration: BoxDecoration(
          color: color ?? Colors.white24,
          borderRadius: BorderRadius.circular(12),
        ),
        child: child,
      ),
    );
  }
}
