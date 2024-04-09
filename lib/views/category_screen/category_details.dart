import 'package:e_commerce/common/widgets/bg_widget.dart';
import 'package:e_commerce/utils/constants/consts.dart';
import 'package:e_commerce/utils/constants/icon_lists.dart';
import 'package:e_commerce/views/category_screen/item_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatefulWidget {
  const CategoryDetails({super.key, required this.title});

  final String title;

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
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
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    6,
                    (index) => 'Baby Clothing'
                        .text
                        .align(TextAlign.center)
                        .make()
                        .box
                        .alignCenter
                        .size(100, 40)
                        .roundedSM
                        .margin(
                          const EdgeInsets.symmetric(horizontal: 5),
                        )
                        .white
                        .make(),
                  ),
                ),
              ),
              20.heightBox,
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: categoriesImage.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 240,
                  ),
                  itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        imgP5,
                        width: 200,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                      'Laptop 4GB/64GB'
                          .text
                          .color(darkFontGrey)
                          .fontFamily(semibold)
                          .make(),
                      10.heightBox,
                      '\$600'
                          .text
                          .color(redColor)
                          .fontFamily(bold)
                          .size(16)
                          .make(),
                      10.heightBox,
                    ],
                  )
                      .box
                      .white
                      .margin(const EdgeInsets.symmetric(horizontal: 4))
                      .padding(
                        const EdgeInsets.all(12),
                      )
                      .outerShadowMd
                      .roundedSM
                      .make()
                      .onTap(
                    () {
                      Get.to(
                        () => const ItemDetailScreen(title: 'Dummy Item'),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
