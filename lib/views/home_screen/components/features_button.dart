import 'package:e_commerce/utils/constants/consts.dart';
import 'package:flutter/material.dart';

Widget featuredButton({
  required String title,
  required String icon,
}) {
  return Row(
    children: [
      Image.asset(
        icon,
        height: 60,
        width: 60,
        fit: BoxFit.cover,
      ),
      10.widthBox,
      title.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  )
      .box
      .white
      .size(200, 70)
      .margin(const EdgeInsets.all(5))
      .padding(
        const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 10,
        ),
      )
      .roundedSM
      .outerShadow
      .make();
}
