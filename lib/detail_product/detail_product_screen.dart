import 'package:fashion_shop/constant/dot_indicator.dart';
import 'package:fashion_shop/constant/g_colors.dart';
import 'package:fashion_shop/constant/oval_button.dart';
import 'package:fashion_shop/detail_product/widgets/image_viewpage.dart';
import 'package:fashion_shop/detail_product/widgets/option_product.dart';
import 'package:flutter/material.dart';

class DetailProductScreen extends StatefulWidget {
  static const String routeName = '/detail-product';
  const DetailProductScreen({Key? key}) : super(key: key);

  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  int pageViewIndex = 1;
  late PageController cardVPcontroller;

  @override
  void initState() {
    cardVPcontroller =
        PageController(viewportFraction: 0.9, initialPage: pageViewIndex);
    super.initState();
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
                        child: PageView(
                          controller: cardVPcontroller,
                          onPageChanged: (int page) {
                            setState(() {
                              pageViewIndex = page;
                            });
                          },
                          children: const [
                            ImageViewPage(),
                            ImageViewPage(),
                            ImageViewPage(),
                          ],
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
                  const OptionProduct(),
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
                    children: const [
                      Text(
                        r"$50.00",
                        style: TextStyle(
                          color: GColors.fontColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Price",
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                  const OvalButton(text: "Add to Cart"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> listDotIndicator(Color color) {
    List<Widget> list = [];
    for (int i = 0; i < 3; i++) {
      list.add(i == pageViewIndex
          ? DotIndicator(isActive: true, activeColor: color)
          : DotIndicator(isActive: false, activeColor: color));
    }
    return list;
  }
}
