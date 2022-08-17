import 'package:fashion_shop/constant/dot_indicator.dart';
import 'package:fashion_shop/constant/g_colors.dart';
import 'package:fashion_shop/constant/logo.dart';
import 'package:fashion_shop/home/widgets/card_viewpage.dart';
import 'package:fashion_shop/home/widgets/collections.dart';
import 'package:fashion_shop/home/widgets/popular_products.dart';
import 'package:fashion_shop/home/widgets/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageViewIndex = 1;
  late PageController cardVPcontroller;

  @override
  void initState() {
    cardVPcontroller =
        PageController(viewportFraction: 0.8, initialPage: pageViewIndex);
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
            const Logo(
              primary: GColors.fontColor,
              secondary: GColors.secondaryBtn,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.flip,
                    color: GColors.fontColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chat_bubble_outline,
                    color: GColors.fontColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Search(),
            Column(
              children: [
                SizedBox(
                  height: 200,
                  child: PageView(
                    controller: cardVPcontroller,
                    onPageChanged: (int page) {
                      setState(() {
                        pageViewIndex = page;
                      });
                    },
                    children: const [
                      CardViewpage(),
                      CardViewpage(),
                      CardViewpage(),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: listDotIndicator(GColors.fontColor),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Collections(),
            const SizedBox(height: 16),
            const PopularProducts(),
            const SizedBox(height: 16),
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
