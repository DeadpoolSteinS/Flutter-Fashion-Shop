import 'package:fashion_shop/features/intro/widgets/page_1.dart';
import 'package:fashion_shop/features/intro/widgets/page_indicator.dart';
import 'package:fashion_shop/features/intro/widgets/transparent_button.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  static const String routeName = '/introduction';
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _page = page;
              });
            },
            children: const [
              Page1(),
              Page1(),
              Page1(),
            ],
          ),
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: _listPageIndicator()),
                  const TransparentButton(
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _listPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < 3; i++) {
      list.add(_page == i
          ? const PageIndicator(isActive: true)
          : const PageIndicator(isActive: false));
    }
    return list;
  }
}
