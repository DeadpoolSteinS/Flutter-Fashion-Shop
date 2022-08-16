import 'package:fashion_shop/home/components/popular/card_popular.dart';
import 'package:fashion_shop/home/components/title_with_btn.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const TitleWithBtn(title: "Popular Products"),
          const SizedBox(height: 12),
          GridView.count(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            crossAxisCount: 2,
            children: const [
              CardPopular(title: 'image_1'),
              CardPopular(title: 'image_1'),
              CardPopular(title: 'image_1'),
              CardPopular(title: 'image_1'),
            ],
          )
        ],
      ),
    );
  }
}
