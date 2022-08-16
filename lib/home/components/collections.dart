import 'package:fashion_shop/home/components/collections/card_collection.dart';
import 'package:fashion_shop/home/components/title_with_btn.dart';
import 'package:flutter/material.dart';

class Collections extends StatelessWidget {
  const Collections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const TitleWithBtn(title: "Collection"),
          const SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                CardCollection(title: "Hoodies"),
                SizedBox(width: 8),
                CardCollection(title: "Hoodies"),
                SizedBox(width: 8),
                CardCollection(title: "Hoodies"),
                SizedBox(width: 8),
                CardCollection(title: "Hoodies"),
                SizedBox(width: 8),
                CardCollection(title: "Hoodies"),
                SizedBox(width: 8),
                CardCollection(title: "Hoodies"),
                SizedBox(width: 8),
                CardCollection(title: "Hoodies"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
