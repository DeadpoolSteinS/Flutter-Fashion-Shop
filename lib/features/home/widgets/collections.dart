import 'package:fashion_shop/constant/title_with_btn.dart';
import 'package:fashion_shop/features/home/widgets/collections/card_collection.dart';
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
