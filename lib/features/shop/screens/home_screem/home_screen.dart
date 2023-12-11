// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/common/custom_shape/container/custom_search_container.dart';
import 'package:e_commerce/common/texts/selection_heading.dart';
import 'package:e_commerce/common/widget/layout/grid_view_layout.dart';
import 'package:e_commerce/common/widget/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/features/shop/screens/home_screem/widget/home_appbar.dart';
import 'package:e_commerce/features/shop/screens/home_screem/widget/home_categories.dart';
import 'package:e_commerce/features/shop/screens/home_screem/widget/promo_slider.dart';
import 'package:e_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/common/custom_shape/container/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Appbar
                  const THomeAppBar(),

                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),

                  // Searchbar
                  const SearchBarContainer(
                    title: 'Search In Store',
                  ),

                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),

                  // categaries
                  Padding(
                    padding: const EdgeInsets.only(
                      left: TSize.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        // title
                        SelectionHeading(
                          showActionButton: false,
                          onPressed: () {},
                          title: 'Popular Categories',
                        ),
                        const SizedBox(
                          height: TSize.spaceBtwItems,
                        ),

                        // categaries
                        const HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // body
            Padding(
              padding: const EdgeInsets.all(
                TSize.spaceBtwSections,
              ),
              child: Column(
                children: [
                  const PromoSlider(
                    banner: [
                      'assets/images/banner_images/first_banner.jpg',
                      'assets/images/banner_images/second_banner.jpg',
                      'assets/images/banner_images/third_banner.jpg',
                    ],
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),
                  GridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const ProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
