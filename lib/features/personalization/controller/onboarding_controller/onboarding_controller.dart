import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  PageController pageController = PageController();

  final currentIndex = 0.obs;

  void updatePageIndicator(index) {
    currentIndex.value = index;
  }

  void nextPage(index) {
    if (currentIndex.value == 2) {
      log('Login Screen Present');
    } else {
      final page = currentIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    pageController.jumpToPage(3);
  }

  void dotNavigationClick(index) {
    pageController.jumpToPage(index);
  }
}
