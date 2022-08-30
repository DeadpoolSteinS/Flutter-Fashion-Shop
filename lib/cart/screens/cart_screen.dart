import 'package:fashion_shop/cart/widgets/cart_card.dart';
import 'package:fashion_shop/constant/g_colors.dart';
import 'package:fashion_shop/constant/oval_button.dart';
import 'package:fashion_shop/constant/title_with_btn.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Cart",
              style: TextStyle(
                color: GColors.fontColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                color: GColors.fontColor,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Column(
                children: [
                  const TitleWithBtn(
                    title: "4 items",
                    btn: "Checkout All",
                    sizeTitle: 24,
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return const CartCard();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Material(
            elevation: 4,
            child: Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        r"$250.00",
                        style: TextStyle(
                          color: GColors.fontColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "4 items",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  OvalButton(
                    onTap: () {},
                    child: Text("Checkout"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
