import 'package:e_commerce/utils/constants/consts.dart';
import 'package:flutter/material.dart';

Widget appLogoWidget() {
  return Image.asset(icAppLogo)
      .box
      .white
      .size(100, 100)
      .padding(
        const EdgeInsets.all(10),
      )
      .rounded
      .make();
}
