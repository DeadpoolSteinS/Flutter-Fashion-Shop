import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final Color primary;
  final Color? secondary;

  const Logo({
    Key? key,
    required this.primary,
    this.secondary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Reng',
            style: TextStyle(
              color: primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'vo',
            style: TextStyle(
              color: secondary ?? primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
