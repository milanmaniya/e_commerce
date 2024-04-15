import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/common/widgets/bg_widget.dart';
import 'package:e_commerce/controller/product_controller.dart';
import 'package:e_commerce/utils/constants/consts.dart';
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
  final controller = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: widget.title.text.white.fontFamily(bold).make(),
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection(productsCollections)
              .where('p_category', isEqualTo: widget.title)
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.none &&
                snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final data = {};

            if (snapshot.hasData) {
              for (var element in snapshot.data!.docs) {
                data.addAll(element.data());
              }
            }

            log(data[0]['p_imgs'][0].toString());

            if (data.isNotEmpty) {
              return Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(
                          controller.subCat.length,
                          (index) => "${controller.subCat[index]}"
                              .text
                              .align(TextAlign.center)
                              .make()
                              .box
                              .alignCenter
                              .height(40)
                              .padding(const EdgeInsets.all(10))
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
                        itemCount: data.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 10,
                          mainAxisExtent: 240,
                        ),
                        itemBuilder: (context, index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              data[index]['p_imgs'][0].toString(),
                              width: 200,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            "${data[index]['p_name']}"
                                .text
                                .color(darkFontGrey)
                                .fontFamily(semibold)
                                .make(),
                            10.heightBox,
                            "${data[index]['p_price']}"
                                .numCurrency
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
              );
            } else {
              return Center(
                child: "Product Not Found"
                    .text
                    .size(18)
                    .color(darkFontGrey)
                    .fontFamily(semibold)
                    .make(),
              );
            }
          },
        ),
      ),
    );
  }
}
