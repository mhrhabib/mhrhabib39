import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:mhrhabib39/models/product.dart';
import 'package:mhrhabib39/services/api_services.dart';
import 'package:http/http.dart' as http;

class ProductProvider with ChangeNotifier {
  final List<Product> _products = [];
  List<Product> get products {
    return [..._products];
  }

  Future<List<Product>> getAllProducts() async {
    final allProductUrl = Uri.parse(ApiServices.baseUrl);
    final response = await http.get(allProductUrl);
    List body = json.decode(response.body);

    for (var product in body) {
      _products.add(Product.fromJson(product));
    }
    return _products;
  }
}
