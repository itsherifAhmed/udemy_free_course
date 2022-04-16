import 'package:flutter/material.dart';

import '../model/category_model.dart';

List<CategoryModel> getCategories(){
  List<CategoryModel> category = <CategoryModel>[];
  CategoryModel categoryModel;

  //1
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Development";
  categoryModel.imageURL = "assets/dev.svg";
  categoryModel.color=Color(0xff99CAE1);

  category.add(categoryModel);

  //2
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Networking";
  categoryModel.imageURL = "assets/netwrk.svg";
  categoryModel.color=Color(0xffE19999);

  category.add(categoryModel);

  //3
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Web";
  categoryModel.imageURL = "assets/web.svg";
  categoryModel.color=Color(0xff9EE199);
  category.add(categoryModel);

  //4
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Office-Productivity";
  categoryModel.imageURL = "assets/dev.svg";
  categoryModel.color=Color(0xff99CAE1);

  category.add(categoryModel);

  //5
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Personal-Development";
  categoryModel.imageURL = "assets/web.svg";
  categoryModel.color=Color(0xffE19999);

  category.add(categoryModel);

  //6
  categoryModel = new CategoryModel();
  categoryModel.categoryName = " Design";
  categoryModel.imageURL = "assets/dev.svg";
  categoryModel.color=Color(0xff9EE199);

  category.add(categoryModel);

  //7
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Marketing";
  categoryModel.imageURL = "assets/netwrk.svg";
  categoryModel.color=Color(0xffE19999);

  category.add(categoryModel);

  //8
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Language";
  categoryModel.imageURL = "assets/web.svg";
  categoryModel.color=Color(0xff99CAE1);

  category.add(categoryModel);

  //9
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Test-Prep";
  categoryModel.imageURL = "assets/dev.svg";
  categoryModel.color=Color(0xff9EE199);

  category.add(categoryModel);

  return category;

}