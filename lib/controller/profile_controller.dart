import 'package:e_commerce/utils/constants/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  var profileImagePath = ''.obs;

  var txtname = TextEditingController();
  var txtpass = TextEditingController();

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

        firebaseFirestore.collection(usersCollections).doc(user!.uid).update({
          'image': profileImagePath.value,
        }).then((value) {
          VxToast.show(context, msg: 'Photo uplod successfully completed');
        });
      }
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }

  changeDetails(context, name, password) async {
    try {
      firebaseFirestore.collection(usersCollections).doc(user!.uid).update({
        'name': name,
        'password': password,
      }).then((value) {
        VxToast.show(context, msg: 'data updated successfully completed');
      });
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}
