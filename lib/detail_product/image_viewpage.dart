import 'package:flutter/material.dart';

class ImageViewPage extends StatelessWidget {
  const ImageViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
          image: AssetImage('assets/image_1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
