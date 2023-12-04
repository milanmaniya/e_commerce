import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  PageController pageController = PageController();

  void nextPage() {}

  void skipPage() {
    pageController.jumpToPage(3);
  }

  void dotNavigationClick(index) {
    pageController.jumpToPage(index);
  }
}
