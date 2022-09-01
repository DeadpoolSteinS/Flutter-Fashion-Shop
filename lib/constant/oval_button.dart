import 'package:fashion_shop/constant/g_colors.dart';
import 'package:flutter/material.dart';

class OvalButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;
  final double? width;
  final double? height;
  final Color? color;
  final double? verticalPadding;

  const OvalButton({
    Key? key,
    required this.onTap,
    required this.child,
    this.width,
    this.height,
    this.color,
    this.verticalPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: verticalPadding ?? 12,
        ),
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
