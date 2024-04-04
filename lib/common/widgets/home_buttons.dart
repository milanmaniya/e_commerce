import 'package:e_commerce/utils/constants/consts.dart';
import 'package:flutter/material.dart';

Widget homeButtons({
  required String title,
  required VoidCallback onPress,
  required double height,
  required double width,
  required String icon,
}) {
  return Container(
    alignment: Alignment.center,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: whiteColor,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          width: width,
        ),
        5.heightBox,
        title.text.fontFamily(semibold).color(darkFontGrey).make(),
      ],
    ),
  ).onTap(
    () => onPress,
  );
}
