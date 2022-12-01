import 'package:complex_drawer_for_category_subcategory_subsubcategory/model/category_data.dart';
import 'package:complex_drawer_for_category_subcategory_subsubcategory/service/api_category_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';


class CategoryProvider with ChangeNotifier {
  List<CategoryDataModel> categoryList = [];
  List<Childes> subCategoryList = [];
  List<Childess> subSubCategoryList = [];

  Future<List<CategoryDataModel>> getCategoryData() async {
    categoryList = await CategoryApiService.fetchCategoryData();
    //subCategoryList=categoryList.where((element) => element.childes.isNotEmpty)
    notifyListeners();
    return categoryList;
  }

  loadSubCategory(){

  }
}

