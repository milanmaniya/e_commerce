import 'package:e_commerce/utils/constant/colors.dart';
import 'package:e_commerce/utils/constant/sizes.dart';
import 'package:e_commerce/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class SearchBarContainer extends StatelessWidget {
  const SearchBarContainer({
    super.key,
    required this.title,
    this.showBackground = true,
    this.showBorder = true,
    this.icon = Iconsax.search_normal,
  });

  final String title;
  final bool showBackground, showBorder;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: TSize.defaultSpace,
      ),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(TSize.md),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSize.cardRadiusLg - 6),
          border: showBorder
              ? Border.all(
                  color: TColor.grey,
                )
              : null,
          color: showBackground
              ? dark
                  ? TColor.dark
                  : TColor.light
              : Colors.transparent,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: TColor.darkGrey,
            ),
            const SizedBox(
              width: TSize.spaceBtwItems,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
