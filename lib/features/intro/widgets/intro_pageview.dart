import 'package:fashion_shop/bottom_bar.dart';
import 'package:fashion_shop/features/intro/bloc/page_bloc.dart';
import 'package:fashion_shop/features/intro/widgets/item_pageview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IntroPageview extends StatelessWidget {
  final PageController pageController;
  const IntroPageview({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageBloc pageBloc = BlocProvider.of<PageBloc>(context);
    return PageView(
      allowImplicitScrolling: true,
      controller: pageController,
      onPageChanged: (int page) {
        pageBloc.add(ChangePage(page));
      },
      children: [
        ItemPageview(
          imageAsset: "assets/intro-image_1.jpg",
          onTap: () {
            pageController.animateToPage(
              1,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn,
            );
          },
        ),
        ItemPageview(
          imageAsset: "assets/intro-image_2.jpg",
          onTap: () {
            pageController.animateToPage(
              2,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn,
            );
          },
        ),
        ItemPageview(
          imageAsset: "assets/intro-image_3.jpg",
          textButton: "Done",
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              BottomBar.routeName,
              (route) => false,
            );
          },
        ),
      ],
    );
  }
}
