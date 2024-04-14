import 'package:e_commerce/model/category_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final subCat = [];

  getSubCategories(title) async {
    subCat.clear();
    final data =
        await rootBundle.loadString("lib/services/category_model.json");

    final decoded = categoryModelFromJson(data);

    var s =
        decoded.categories.where((element) => element.name == title).toList();

    for (var element in s[0].subCategory) {
      subCat.add(element);
    }
  }
}
