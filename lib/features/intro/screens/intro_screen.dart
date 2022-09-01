import 'package:fashion_shop/features/intro/bloc/page_bloc.dart';
import 'package:fashion_shop/features/intro/widgets/intro_pageview.dart';
import 'package:fashion_shop/features/intro/widgets/intro_topbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IntroScreen extends StatelessWidget {
  static const String routeName = '/introduction';
  IntroScreen({Key? key}) : super(key: key);

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PageBloc(),
      child: Scaffold(
        body: Stack(
          children: [
            IntroPageview(pageController: _pageController),
            IntroTopbar(pageController: _pageController),
          ],
        ),
      ),
    );
  }
}
