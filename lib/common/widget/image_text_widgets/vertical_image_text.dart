import 'package:e_commerce/utils/constant/colors.dart';
import 'package:e_commerce/utils/constant/sizes.dart';
import 'package:e_commerce/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';


class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.title,
    required this.imageUrl,
    this.onPressed,
    this.textColor = TColor.white,
    this.backgroundColor = TColor.white,
  });

  final String title;
  final String imageUrl;
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(
          right: TSize.spaceBtwItems,
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(TSize.sm),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: dark ? TColor.black : TColor.white,
              ),
              child: Center(
                child: Image(
                  fit: BoxFit.cover,
                  color: dark ? TColor.dark : TColor.light,
                  image: AssetImage(
                    imageUrl,
                  ),
                ),
              ),
            ),

            //text
            const SizedBox(
              height: TSize.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelMedium!.apply(
                      color: textColor,
                    ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
