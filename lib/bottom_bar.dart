import 'package:fashion_shop/constant/g_colors.dart';
import 'package:fashion_shop/features/cart/screens/cart_screen.dart';
import 'package:fashion_shop/features/home/screens/home_screen.dart';
import 'package:fashion_shop/profile/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/primary-home';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;

  List<Widget> listPage = [
    const HomeScreen(),
    const Scaffold(),
    const Scaffold(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listPage[_page],
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
