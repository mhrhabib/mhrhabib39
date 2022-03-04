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

  //favo

  //finding the right id for product
  Product findById(int id) {
    return _products.firstWhere((item) => item.id == id);
  }

//for getting all products
  Future<List<Product>> getAllProducts() async {
    final allProductUrl = Uri.parse(ApiServices.baseUrl);
    final response = await http.get(allProductUrl);
    List body = json.decode(response.body);

    for (var product in body) {
      _products.add(Product.fromJson(product));
    }
    return _products;
  }

  Future getAllCategory() async {
    final allCategoryUrl = Uri.parse(ApiServices.categorisUrl);
    final response = await http.get(allCategoryUrl);

    return json.decode(response.body);
  }
}
