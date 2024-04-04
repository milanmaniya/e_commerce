import 'package:e_commerce/common/widgets/home_buttons.dart';
import 'package:e_commerce/utils/constants/consts.dart';
import 'package:e_commerce/utils/constants/icon_lists.dart';
import 'package:e_commerce/views/home_screen/components/features_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                color: lightGrey,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.search,
                    ),
                    fillColor: whiteColor,
                    filled: true,
                    hintText: searchAnything,
                    hintStyle: TextStyle(
                      color: textfieldGrey,
                    ),
                  ),
                ),
              ),
              15.heightBox,
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VxSwiper.builder(
                        autoPlay: true,
                        height: 180,
                        enlargeCenterPage: true,
                        scrollPhysics: const BouncingScrollPhysics(),
                        itemCount: sliderList.length,
                        itemBuilder: (context, index) => Builder(
                          builder: (context) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Card(
                                child: Image.asset(
                                  sliderList[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      17.heightBox,
                      Row(
                        children: [
                          Expanded(
                            child: homeButtons(
                              title: todayDeal,
                              onPress: () {},
                              height: 90,
                              width: 26,
                              icon: icTodaysDeal,
                            ),
                          ),
                          10.widthBox,
                          Expanded(
                            child: homeButtons(
                              title: flashSale,
                              onPress: () {},
                              height: 90,
                              width: 26,
                              icon: icFlashDeal,
                            ),
                          ),
                        ],
                      ),
                      17.heightBox,
                      VxSwiper.builder(
                        autoPlay: true,
                        height: 180,
                        enlargeCenterPage: true,
                        scrollPhysics: const BouncingScrollPhysics(),
                        itemCount: secondSliderList.length,
                        itemBuilder: (context, index) => Builder(
                          builder: (context) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Card(
                                child: Image.asset(
                                  secondSliderList[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      17.heightBox,
                      Row(
                        children: [
                          Expanded(
                            child: homeButtons(
                              title: categories,
                              onPress: () {},
                              height: 90,
                              width: 26,
                              icon: icTopCategories,
                            ),
                          ),
                          10.widthBox,
                          Expanded(
                            child: homeButtons(
                              title: topBrand,
                              onPress: () {},
                              height: 90,
                              width: 26,
                              icon: icBrands,
                            ),
                          ),
                          10.widthBox,
                          Expanded(
                            child: homeButtons(
                              title: topSeller,
                              onPress: () {},
                              height: 90,
                              width: 26,
                              icon: icTopSeller,
                            ),
                          ),
                        ],
                      ),
                      17.heightBox,
                      featuredCategories.text
                          .fontFamily(bold)
                          .color(darkFontGrey)
                          .size(18)
                          .make(),
                      10.heightBox,
                      SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            featuredImage1.length,
                            (index) => Column(
                              children: [
                                featuredButton(
                                  icon: featuredImage1[index],
                                  title: featuredTitle1[index],
                                ),
                                featuredButton(
                                  icon: featuredImage2[index],
                                  title: featuredTitle2[index],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      20.heightBox,
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.all(10),
                        color: redColor,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            featuredProduct.text.white
                                .size(18)
                                .fontFamily(bold)
                                .make(),
                            10.heightBox,
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              child: Row(
                                children: List.generate(
                                  6,
                                  (index) => Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        imgP1,
                                        width: 150,
                                        fit: BoxFit.cover,
                                      ),
                                      10.heightBox,
                                      'Laptop 4GB/64GB'
                                          .text
                                          .fontFamily(semibold)
                                          .color(darkFontGrey)
                                          .make(),
                                      10.heightBox,
                                      '\$600'
                                          .text
                                          .fontFamily(bold)
                                          .color(redColor)
                                          .size(16)
                                          .make(),
                                    ],
                                  )
                                      .box
                                      .white
                                      .rounded
                                      .margin(
                                        const EdgeInsets.all(5),
                                      )
                                      .padding(
                                        const EdgeInsets.all(8),
                                      )
                                      .make(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      17.heightBox,
                      VxSwiper.builder(
                        autoPlay: true,
                        height: 180,
                        enlargeCenterPage: true,
                        scrollPhysics: const BouncingScrollPhysics(),
                        itemCount: secondSliderList.length,
                        itemBuilder: (context, index) => Builder(
                          builder: (context) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Card(
                                child: Image.asset(
                                  secondSliderList[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      17.heightBox,
                      GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 6,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          mainAxisExtent: 275,
                        ),
                        itemBuilder: (context, index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              imgP1,
                              width: 200,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            const Spacer(),
                            'Laptop 4GB/64GB'
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                            10.heightBox,
                            '\$600'
                                .text
                                .fontFamily(bold)
                                .color(redColor)
                                .size(16)
                                .make(),
                          ],
                        )
                            .box
                            .white
                            .rounded
                            .padding(
                              const EdgeInsets.only(
                                bottom: 15,
                                left: 15,
                                right: 15,
                              ),
                            )
                            .make(),
                      ),
                    ],
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
