import 'package:e_commerce/common/widgets/elevated_button.dart';
import 'package:e_commerce/utils/constants/consts.dart';
import 'package:flutter/material.dart';

Widget exitDialog() {
  return Dialog(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        "Confirm".text.fontFamily(bold).size(18).color(darkFontGrey).make(),
        const Divider(),
        10.heightBox,
        "Are you sure you want to exit?"
            .text
            .size(16)
            .color(darkFontGrey)
            .make(),
        10.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            commonElevatedButton(
              onPress: () {},
              backgroundColor: redColor,
              foregroundColor: whiteColor,
              title: 'Okay',
            ),
            commonElevatedButton(
              onPress: () {},
              backgroundColor: redColor,
              foregroundColor: whiteColor,
              title: 'No',
            ),
          ],
        )
      ],
    ).box.color(lightGrey).roundedSM.shadowMd.make(),
  );
}
