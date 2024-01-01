import 'package:e_commerce/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.height,
    this.width,
    this.radius = 400,
    this.padding,
    this.backgroundColor = TColor.white,
    this.child,
    this.margin,
  });

  final double? height, width;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final Color backgroundColor;
  final Widget? child;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      padding: padding,
      margin: margin,
      child: child,
    );
  }
}
