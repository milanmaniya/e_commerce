import 'package:e_commerce/common/custom_shape/container/circular_container.dart';
import 'package:e_commerce/common/style/shadow.dart';
import 'package:e_commerce/common/texts/product_price_text.dart';
import 'package:e_commerce/common/texts/product_title_text.dart';
import 'package:e_commerce/common/widget/icon/circular_icon.dart';
import 'package:e_commerce/common/widget/images/rounded_images.dart';
import 'package:e_commerce/utils/constant/colors.dart';
import 'package:e_commerce/utils/constant/sizes.dart';
import 'package:e_commerce/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 180,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.horizontalProductShadow],
          borderRadius: BorderRadius.circular(TSize.peoductImageRadius),
          color: dark ? TColor.darkGrey : TColor.white,
        ),
        child: Column(
          children: [
            CircularContainer(
              height: 178,
              padding: const EdgeInsets.all(TSize.sm),
              backgroundColor: dark ? TColor.dark : TColor.white,
              child: Stack(
                children: [
                  const RoundedImage(
                    fit: BoxFit.cover,
                    imageUrl: 'assets/images/banner_images/first_banner.jpg',
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 12,
                    child: CircularContainer(
                      radius: TSize.sm,
                      padding: const EdgeInsets.symmetric(
                        horizontal: TSize.sm,
                        vertical: TSize.xs,
                      ),
                      backgroundColor: TColor.secondary.withOpacity(0.8),
                      child: Text(
                        '25%',
                        style: Theme.of(context).textTheme.labelLarge!.apply(
                              color: TColor.black,
                            ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: TSize.spaceBtwItems / 2,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: TSize.sm,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        width: TSize.xs,
                      ),
                      const Icon(
                        Iconsax.verify5,
                        color: TColor.primary,
                        size: TSize.iconXs,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ProductPriceText(
                        price: '35',
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: TColor.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSize.cardRadiusMd),
                            bottomRight:
                                Radius.circular(TSize.peoductImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          height: TSize.iconLg * 1.2,
                          width: TSize.iconLg * 1.2,
                          child: Icon(
                            Iconsax.add,
                            color: TColor.white,
                          ),
                        ),
                      ),
                    ],
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
