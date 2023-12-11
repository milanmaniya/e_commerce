import 'package:e_commerce/utils/constant/colors.dart';
import 'package:e_commerce/utils/constant/sizes.dart';
import 'package:e_commerce/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    this.onPressed,
    this.width,
    this.height,
    this.size = TSize.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
  });

  final VoidCallback? onPressed;
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : THelperFunction.isDarkMode(context)
                ? TColor.black.withOpacity(0.9)
                : TColor.white.withOpacity(0.8),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Iconsax.heart5,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
