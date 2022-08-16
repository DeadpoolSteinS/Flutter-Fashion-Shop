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
  int _page = 0;
  PageController cardVPcontroller =
      PageController(viewportFraction: 0.8, initialPage: 1);

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
            SizedBox(
              height: 200,
              child: PageView(
                controller: cardVPcontroller,
                children: const [
                  CardViewpage(),
                  CardViewpage(),
                  CardViewpage(),
                ],
              ),
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
}
