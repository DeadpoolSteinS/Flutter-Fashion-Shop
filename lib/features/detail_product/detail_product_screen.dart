import 'package:fashion_shop/constant/dot_indicator.dart';
import 'package:fashion_shop/constant/g_colors.dart';
import 'package:fashion_shop/constant/oval_button.dart';
import 'package:fashion_shop/features/detail_product/services/detail_product_services.dart';
import 'package:fashion_shop/features/detail_product/widgets/image_viewpage.dart';
import 'package:fashion_shop/features/detail_product/widgets/option_product.dart';
import 'package:fashion_shop/models/product_model.dart';
import 'package:flutter/material.dart';

class DetailProductScreen extends StatefulWidget {
  static const String routeName = '/detail-product';
  final Product product;

  const DetailProductScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  int pageViewIndex = 0;
  late PageController cardVPcontroller;
  final DetailProductServices detailProductServices = DetailProductServices();

  @override
  void initState() {
    cardVPcontroller =
        PageController(viewportFraction: 0.9, initialPage: pageViewIndex);
    super.initState();
  }

  void addToCart() {
    detailProductServices.addToCart(
      context: context,
      product: widget.product,
    );
    // productDetailsServices.addToCart(
    //   context: context,
    //   product: widget.product,
    // );
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
              "Product Details",
              style: TextStyle(
                color: GColors.fontColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: GColors.fontColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_cart_checkout,
                    color: GColors.fontColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: 1 / 0.9,
                        child: PageView.builder(
                          controller: cardVPcontroller,
                          onPageChanged: (int page) {
                            setState(() {
                              pageViewIndex = page;
                            });
                          },
                          itemCount: widget.product.images.length,
                          itemBuilder: ((context, index) {
                            return ImageViewPage(
                              imageUrl: widget.product.images[index],
                            );
                          }),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 320),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: listDotIndicator(Colors.white),
                        ),
                      ),
                    ],
                  ),
                  OptionProduct(product: widget.product),
                ],
              ),
            ),
          ),
          Material(
            elevation: 4,
            child: Container(
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                // color: Colors.black12,
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
                        r"$" "${widget.product.price.toStringAsFixed(2)}",
                        style: const TextStyle(
                          color: GColors.fontColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Price",
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                  OvalButton(
                    onTap: () {
                      addToCart();
                    },
                    height: 50,
                    child: const Text(
                      "Add to Cart",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> listDotIndicator(Color color) {
    List<Widget> list = [];
    for (int i = 0; i < widget.product.images.length; i++) {
      list.add(i == pageViewIndex
          ? DotIndicator(isActive: true, activeColor: color)
          : DotIndicator(isActive: false, activeColor: color));
    }
    return list;
  }
}
