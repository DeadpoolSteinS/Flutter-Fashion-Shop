import 'package:fashion_shop/constant/g_colors.dart';
import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final bool isActive;
  final Color activeColor;

  const DotIndicator({
    Key? key,
    required this.isActive,
    required this.activeColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        height: isActive ? 10 : 8.0,
        width: isActive ? 12 : 8.0,
        decoration: BoxDecoration(
          // boxShadow: [
          //   isActive
          //       ? const BoxShadow(
          //           color: GColors.fontColor,
          //           blurRadius: 4.0,
          //           spreadRadius: 1.0,
          //           offset: Offset(
          //             0.0,
          //             0.0,
          //           ),
          //         )
          //       : const BoxShadow(
          //           color: Colors.transparent,
          //         )
          // ],
          shape: BoxShape.circle,
          color: isActive ? activeColor : GColors.cardBg,
        ),
      ),
    );
  }
}
