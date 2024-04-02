import 'package:e_commerce/utils/constants/consts.dart';
import 'package:flutter/material.dart';

Widget commonElevatedButton({
  required VoidCallback onPress,
  required Color backgroundColor,
  required Color foregroundColor,
  required String title,
}) {
  return SizedBox(
    height: 40,
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(12),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
      ),
      onPressed: onPress,
      child: title.text.size(16).fontFamily(bold).make(),
    ),
  );
}
