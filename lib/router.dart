import 'package:fashion_shop/bottom_bar.dart';
import 'package:fashion_shop/detail_product/detail_product_screen.dart';
import 'package:fashion_shop/features/intro/screens/intro_screen.dart';
import 'package:fashion_shop/models/product_model.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomBar(),
      );
    case DetailProductScreen.routeName:
      var product = routeSettings.arguments as Product;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => DetailProductScreen(product: product),
      );
    case IntroScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const IntroScreen(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
