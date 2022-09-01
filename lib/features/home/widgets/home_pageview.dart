import 'package:fashion_shop/constant/dot_indicator.dart';
import 'package:fashion_shop/constant/g_colors.dart';
import 'package:fashion_shop/features/home/bloc/page_bloc.dart';
import 'package:fashion_shop/features/home/widgets/card_pageview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageview extends StatelessWidget {
  HomePageview({Key? key}) : super(key: key);

  final PageController cardPageview =
      PageController(viewportFraction: 0.8, initialPage: 1);

  @override
  Widget build(BuildContext context) {
    final PageBloc pageBloc = BlocProvider.of<PageBloc>(context);
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView(
            allowImplicitScrolling: true,
            controller: cardPageview,
            onPageChanged: (int page) {
              pageBloc.add(ChangePage(page));
            },
            children: const [
              CardPageview(
                imageAsset: "assets/home-pageview_1.jpg",
                buttonColor: GColors.secondaryBtn,
              ),
              CardPageview(
                imageAsset: "assets/home-pageview_2.jpg",
              ),
              CardPageview(
                imageAsset: "assets/home-pageview_3.jpg",
                buttonColor: GColors.secondaryBtn,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        BlocBuilder<PageBloc, PageState>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: listDotIndicator(GColors.fontColor, state.value),
            );
          },
        ),
      ],
    );
  }

  List<Widget> listDotIndicator(Color color, int isActive) {
    List<Widget> list = [];
    for (int i = 0; i < 3; i++) {
      list.add(i == isActive
          ? DotIndicator(isActive: true, activeColor: color)
          : DotIndicator(isActive: false, activeColor: color));
    }
    return list;
  }
}
