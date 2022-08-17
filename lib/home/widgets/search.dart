import 'package:fashion_shop/constant/g_colors.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      height: 60,
      child: TextFormField(
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: GColors.fontColor,
          ),
          filled: true,
          fillColor: GColors.bgGray,
          contentPadding: EdgeInsets.only(top: 10),
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.all(
          //     Radius.circular(16),
          //   ),
          // ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            borderSide: BorderSide(color: GColors.fontColor),
          ),
          hintText: 'Search for products',
          // hintStyle: TextStyle(
          //   fontWeight: FontWeight.w500,
          //   fontSize: 17,
          // ),
          suffixIcon: Icon(
            Icons.tune,
            color: GColors.fontColor,
          ),
        ),
      ),
    );
  }
}
