import 'package:e_commerce/common/widgets/bg_widget.dart';
import 'package:e_commerce/utils/constants/consts.dart';
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
          actions: const [
            Padding(
              padding: EdgeInsets.only(
                right: 20,
              ),
              child: Icon(
                Icons.search,
                color: whiteColor,
              ),
            ),
          ],
          title: widget.title.text.fontFamily(bold).white.make(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                    6,
                    (index) => 'Baby Clothing'
                        .text
                        .size(14)
                        .fontFamily(semibold)
                        .make()
                        .box
                        .white
                        .alignCenter
                        .roundedSM
                        .size(110, 50)
                        .margin(
                          const EdgeInsets.symmetric(horizontal: 4),
                        )
                        .make(),
                  ),
                ),
              ),
              20.heightBox,
              GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 2,
                  mainAxisExtent: 200,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => Container(
                  color: Vx.yellow500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
