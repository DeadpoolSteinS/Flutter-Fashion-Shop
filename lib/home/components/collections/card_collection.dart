import 'package:flutter/material.dart';

class CardCollection extends StatelessWidget {
  const CardCollection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 65,
      color: Colors.redAccent.withOpacity(0.3),
    );
  }
}
