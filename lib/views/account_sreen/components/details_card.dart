import 'package:e_commerce/utils/constants/consts.dart';
import 'package:flutter/material.dart';

Widget detailsCard({
  required String count,
  required String title,
  required double width,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count.text.fontFamily(bold).size(16).color(darkFontGrey).make(),
      5.heightBox,
      title.text.color(darkFontGrey).make(),
    ],
  )
      .box
      .white
      .rounded
      .height(80)
      .width(width)
      .padding(const EdgeInsets.all(4))
      .make();
}
