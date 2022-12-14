import 'dart:convert';

import 'package:fashion_shop/constant/error_handling.dart';
import 'package:fashion_shop/constant/g_variables.dart';
import 'package:fashion_shop/constant/utils.dart';
import 'package:fashion_shop/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DetailProductServices {
  void addToCart({
    required BuildContext context,
    required Product product,
  }) async {
    try {
      http.Response res = await http.post(
        Uri.parse('$uri/api/add-to-cart'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'id': product.id,
        }),
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          showSnackBar(context, 'Product Added to Cart Successfully!');
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
