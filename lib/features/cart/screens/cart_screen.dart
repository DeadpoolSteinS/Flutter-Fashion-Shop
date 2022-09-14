import 'package:fashion_shop/constant/g_colors.dart';
import 'package:fashion_shop/constant/oval_button.dart';
import 'package:fashion_shop/constant/title_with_btn.dart';
import 'package:fashion_shop/features/cart/services/cart_services.dart';
import 'package:fashion_shop/features/cart/widgets/cart_card.dart';
import 'package:fashion_shop/models/cart_model.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Cart> carts = [];
  double total = 0;

  final CartServices cartServices = CartServices();

  @override
  void initState() {
    fetchCarts();
    super.initState();
  }

  Future<void> fetchCarts() async {
    carts = await cartServices.fetchCarts(context: context);
    setState(() {});
  }

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
                  TitleWithBtn(
                    title: "${carts.length} items",
                    btn: "Checkout All",
                    sizeTitle: 24,
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: Builder(builder: (context) {
                      if (carts.isEmpty) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        return ListView.builder(
                          itemCount: carts.length,
                          itemBuilder: (BuildContext context, int index) {
                            total += carts[index].product.price *
                                carts[index].quantity;
                            return CartCard(cart: carts[index]);
                          },
                        );
                      }
                    }),
                  ),
                ],
              ),
            ),
          ),
          Container(
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
                  children: [
                    Text(
                      r"$" "$total",
                      style: const TextStyle(
                        color: GColors.fontColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "${carts.length} items",
                      style: const TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                OvalButton(
                  onTap: () {},
                  height: 50,
                  color: carts.isEmpty ? Colors.black38 : null,
                  child: const Text(
                    "Checkout",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
