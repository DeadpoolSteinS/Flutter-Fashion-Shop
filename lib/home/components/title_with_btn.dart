import 'package:flutter/material.dart';

class TitleWithBtn extends StatelessWidget {
  final String title;

  const TitleWithBtn({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Text(
          "Show All",
          style: TextStyle(
            color: Colors.redAccent.withOpacity(0.5),
          ),
        )
      ],
    );
  }
}
