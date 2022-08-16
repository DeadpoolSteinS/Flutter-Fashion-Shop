import 'package:flutter/material.dart';

class CardPopular extends StatelessWidget {
  const CardPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.redAccent.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
