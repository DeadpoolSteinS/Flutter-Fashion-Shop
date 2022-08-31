import 'package:fashion_shop/features/home/widgets/popular/card_popular.dart';
import 'package:fashion_shop/constant/title_with_btn.dart';
import 'package:fashion_shop/models/product_model.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  final List<Product> products;

  const PopularProducts({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const TitleWithBtn(title: "Popular Products"),
          const SizedBox(height: 12),
          GridView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              crossAxisCount: 2,
            ),
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              return CardPopular(product: products[index]);
            },
          )
        ],
      ),
    );
  }
}
