import 'package:e_commerce/utils/constants/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;

  var navBarItem = [
    BottomNavigationBarItem(
      icon: Image.asset(
        icHome,
        width: 26,
      ),
      label: home,
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        icCategories,
        width: 26,
      ),
      label: categories,
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        icCart,
        width: 26,
      ),
      label: cart,
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        icProfile,
        width: 26,
      ),
      label: account,
    ),
  ].obs;

  var navBody = [
    Container(
      color: redColor,
    ),
    Container(
      color: golden,
    ),
    Container(
      color: lightGolen,
    ),
    Container(
      color: fontGrey,
    ),
  ].obs;
}
