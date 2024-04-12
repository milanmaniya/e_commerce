import 'dart:io';

import 'package:e_commerce/utils/constants/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  var profileImagePath = ''.obs;

  changeImage(context) async {
    try {
      final imag = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        imageQuality: 80,
      );

      if (imag == null) {
        return null;
      } else {
        profileImagePath.value = imag.path;
      }
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}
