import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class
  DrawerDataModel{
  static List<Category> categoryList=[
    Category(id: 1,title: "Category 1"),
    Category(id: 2,title: "Category 2"),
    Category(id: 3,title: "Category 3"),
    Category(id: 4,title: "Category 4"),
    Category(id: 5,title: "Category 5"),
    Category(id: 6,title: "Category 6"),
    Category(id: 7,title: "Category 7"),
  ];

  static List<SubCategory> subCategoryList=[
    SubCategory(id: 1,categoryId: 3,title: "Sub Category 1"),
    SubCategory(id: 2,categoryId: 3,title: "Sub Category 2"),
    SubCategory(id: 3,categoryId: 3,title: "Sub Category 3"),
    SubCategory(id: 4,categoryId: 6,title: "Sub Category 4"),
    SubCategory(id: 5,categoryId: 1,title: "Sub Category 5"),
    SubCategory(id: 6,categoryId: 2,title: "Sub Category 6"),
    SubCategory(id: 7,categoryId: 2,title: "Sub Category 6"),
  ];

  static List<SubSubCategory> subSubCategoryList=[
    SubSubCategory(id: 1,categoryId: 2,subCategoryId: 2,title: "Sub Sub Category 1"),
    SubSubCategory(id: 2,categoryId: 2,subCategoryId: 2,title: "Sub Sub Category 2"),
    SubSubCategory(id: 3,categoryId: 4,subCategoryId: 3,title: "Sub Sub Category 3"),
    SubSubCategory(id: 4,categoryId: 4,subCategoryId: 3,title: "Sub Sub Category 4"),
    SubSubCategory(id: 5,categoryId: 6,subCategoryId: 4,title: "Sub Sub Category 5"),
    SubSubCategory(id: 6,categoryId: 6,subCategoryId: 6,title: "Sub Sub Category 6"),
    SubSubCategory(id: 7,categoryId: 2,subCategoryId: 6,title: "Sub Sub Category 6"),
  ];
}

class Category{
  int? id;
  String? title;
  Category({this.id,this.title});
}

class SubCategory{
  int? categoryId;
  int? id;
  String? title;

  SubCategory({this.id,this.categoryId,this.title});
}

class SubSubCategory{
  int? categoryId;
  int? subCategoryId;
  int? id;
  String? title;

  SubSubCategory({this.id,this.categoryId,this.subCategoryId,this.title});
}