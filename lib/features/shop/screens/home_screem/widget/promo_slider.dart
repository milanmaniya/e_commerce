import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/common/custom_shape/container/circular_container.dart';
import 'package:e_commerce/common/widget/images/rounded_images.dart';
import 'package:e_commerce/features/shop/controller/home_controller.dart';
import 'package:e_commerce/utils/constant/colors.dart';
import 'package:e_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banner,
  });

  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            initialPage: controller.selectedIndex.value,
            viewportFraction: 1,
            autoPlay: true,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banner.map((url) => RoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(
          height: TSize.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banner.length; i++)
                CircularContainer(
                  height: 4,
                  width: 20,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.selectedIndex.value == i
                      ? TColor.primary
                      : TColor.grey,
                ),
            ],
          ),
        )
      ],
    );
  }
}
