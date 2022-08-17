import 'package:fashion_shop/constant/dot_indicator.dart';
import 'package:fashion_shop/constant/g_colors.dart';
import 'package:fashion_shop/constant/logo.dart';
import 'package:fashion_shop/home/components/card_viewpage.dart';
import 'package:fashion_shop/home/components/collections.dart';
import 'package:fashion_shop/home/components/popular_products.dart';
import 'package:fashion_shop/home/components/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0, pageViewIndex = 1;
  late PageController cardVPcontroller;

  @override
  void initState() {
    cardVPcontroller =
        PageController(viewportFraction: 0.8, initialPage: pageViewIndex);
    super.initState();
  }

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
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
                  children: listDotIndicator(),
                )
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _page,
        selectedItemColor: GColors.fontColor,
        unselectedItemColor: GColors.fontColor.withOpacity(0.5),
        elevation: 4,
        onTap: updatePage,
      ),
    );
  }

  List<Widget> listDotIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < 3; i++) {
      list.add(i == pageViewIndex
          ? const DotIndicator(isActive: true)
          : const DotIndicator(isActive: false));
    }
    return list;
  }
}
