import 'package:fashion_shop/constant/dot_indicator.dart';
import 'package:fashion_shop/constant/g_colors.dart';
import 'package:fashion_shop/detail_product/image_viewpage.dart';
import 'package:fashion_shop/detail_product/option_product.dart';
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
      body: SingleChildScrollView(
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
