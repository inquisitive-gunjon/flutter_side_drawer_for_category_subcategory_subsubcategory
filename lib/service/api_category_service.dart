import 'dart:convert';

import 'package:complex_drawer_for_category_subcategory_subsubcategory/model/category_data.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class CategoryApiService {
  static Future<List<CategoryDataModel>> fetchCategoryData() async {
    List<CategoryDataModel> categoryList = [];
    var link = Uri.parse('https://ecom.excelitaiportfolio.com/api/v1/categories');
    var response = await http.get(link);
    var data = jsonDecode(response.body);
    CategoryDataModel products;
    for (var i in data) {
      products = CategoryDataModel.fromJson(i);
      categoryList.add(products);
    }
    return categoryList;
  }
}



