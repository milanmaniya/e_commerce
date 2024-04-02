import 'package:e_commerce/utils/constants/consts.dart';
import 'package:e_commerce/views/account_sreen/account_screen.dart';
import 'package:e_commerce/views/cart_screen/cart_screen.dart';
import 'package:e_commerce/views/category_screen/category_screen.dart';
import 'package:e_commerce/views/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoardController extends GetxController {
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
    const HomeScreen(),
    const CategoryScreen(),
    const CartScreen(),
    const AccountSCreen()
  ].obs;
}
