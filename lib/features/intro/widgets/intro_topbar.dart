import 'package:fashion_shop/features/intro/bloc/page_bloc.dart';
import 'package:fashion_shop/features/intro/widgets/page_indicator.dart';
import 'package:fashion_shop/features/intro/widgets/transparent_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IntroTopbar extends StatelessWidget {
  final PageController pageController;
  const IntroTopbar({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color(0x00000000),
            Colors.black54,
          ],
        ),
      ),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 24,
          ),
          child: BlocBuilder<PageBloc, PageState>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: _listPageIndicator(state.value)),
                  state.value == 2
                      ? Container(height: 22)
                      : TransparentButton(
                          onTap: () {
                            pageController.animateToPage(
                              2,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                          child: const Text(
                            "Skip",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  List<Widget> _listPageIndicator(int isActive) {
    List<Widget> list = [];
    for (int i = 0; i < 3; i++) {
      list.add(isActive == i
          ? const PageIndicator(isActive: true)
          : const PageIndicator(isActive: false));
    }
    return list;
  }
}
