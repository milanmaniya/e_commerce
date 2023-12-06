import 'package:e_commerce/features/shop/screens/home_screem/home_screen.dart';
import 'package:e_commerce/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationMenuController());

    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 75,
          elevation: 0,
          backgroundColor: dark ? Colors.black : Colors.white,
          indicatorColor: dark
              ? Colors.white.withOpacity(0.1)
              : Colors.black.withOpacity(0.1),
          onDestinationSelected: (value) =>
              controller.selectedIndex.value = value,
          selectedIndex: controller.selectedIndex.value,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(
        () => Center(
          child: controller.screenList[controller.selectedIndex.value],
        ),
      ),
    );
  }
}

class NavigationMenuController extends GetxController {
  final selectedIndex = 0.obs;

  final screenList = [
    const HomeScreen(),
    const Text(
      'Store',
    ),
    const Text(
      'Wishlist',
    ),
    const Text(
      'Profile',
    ),
  ];
}
