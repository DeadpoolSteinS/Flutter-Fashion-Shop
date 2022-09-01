import 'package:fashion_shop/constant/g_colors.dart';
import 'package:fashion_shop/constant/logo.dart';
import 'package:fashion_shop/features/home/bloc/page_bloc.dart';
import 'package:fashion_shop/features/home/services/home_services.dart';
import 'package:fashion_shop/features/home/widgets/collections.dart';
import 'package:fashion_shop/features/home/widgets/home_pageview.dart';
import 'package:fashion_shop/features/home/widgets/popular_products.dart';
import 'package:fashion_shop/features/home/widgets/search.dart';
import 'package:fashion_shop/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> products = [];

  final HomeServices homeServices = HomeServices();

  @override
  void initState() {
    fetchPopularProducts();
    super.initState();
  }

  Future<void> fetchPopularProducts() async {
    products = await homeServices.fetchPopularProduct(context: context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PageBloc(),
      child: Scaffold(
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
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.flip,
                      color: GColors.fontColor,
                    ),
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    padding: const EdgeInsets.only(top: 2),
                    constraints: const BoxConstraints(),
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
              Search(),
              HomePageview(),
              const SizedBox(height: 16),
              const Collections(),
              const SizedBox(height: 16),
              PopularProducts(products: products),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
