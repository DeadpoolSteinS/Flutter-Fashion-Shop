import 'dart:convert';

import 'package:fashion_shop/constant/error_handling.dart';
import 'package:fashion_shop/constant/g_variables.dart';
import 'package:fashion_shop/constant/utils.dart';
import 'package:fashion_shop/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CartServices {
  Future<List<Cart>> fetchCarts({
    required BuildContext context,
  }) async {
    List<Cart> cartList = [];
    try {
      http.Response res = await http.get(
        Uri.parse('$uri/api/carts/'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          for (int i = 0; i < jsonDecode(res.body).length; i++) {
            cartList.add(
              Cart.fromJson(
                jsonEncode(
                  jsonDecode(res.body)[i],
                ),
              ),
            );
          }
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
    return cartList;
  }
}
