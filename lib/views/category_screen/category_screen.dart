import 'package:e_commerce/common/widgets/bg_widget.dart';
import 'package:e_commerce/controller/product_controller.dart';
import 'package:e_commerce/utils/constants/consts.dart';
import 'package:e_commerce/utils/constants/icon_lists.dart';
import 'package:e_commerce/views/category_screen/category_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: categories.text.white.fontFamily(bold).make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: categoriesImage.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 12,
              crossAxisSpacing: 10,
              mainAxisExtent: 185,
            ),
            itemBuilder: (context, index) => Column(
              children: [
                Image.asset(
                  categoriesImage[index],
                  width: 200,
                  height: 120,
                  fit: BoxFit.cover,
                ),
                10.heightBox,
                categoriesList[index]
                    .text
                    .color(darkFontGrey)
                    .align(TextAlign.center)
                    .make(),
              ],
            )
                .box
                .white
                .clip(Clip.antiAlias)
                .padding(
                  const EdgeInsets.only(
                    bottom: 8,
                    top: 10,
                  ),
                )
                .outerShadowMd
                .roundedSM
                .make()
                .onTap(
              () {
                Get.to(
                  () => CategoryDetails(
                    title: categoriesList[index],
                  ),
                );
                controller.getSubCategories(categoriesList[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
