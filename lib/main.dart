import 'package:fashion_shop/bottom_bar.dart';
import 'package:fashion_shop/constant/g_colors.dart';
import 'package:fashion_shop/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fashion Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Switzer',
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: GColors.fontColor,
          ),
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const BottomBar(),
    );
  }
}
