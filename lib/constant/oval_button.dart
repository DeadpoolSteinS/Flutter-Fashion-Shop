import 'package:fashion_shop/constant/g_colors.dart';
import 'package:flutter/material.dart';

class OvalButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;
  final double? width;
  final double? height;
  final Color? color;

  const OvalButton({
    Key? key,
    required this.onTap,
    required this.child,
    this.width,
    this.height,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: color ?? GColors.primaryBtn,
        ),
        child: child,
      ),
    );
  }
}
