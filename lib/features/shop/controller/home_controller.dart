import 'package:get/get.dart';

class HomeController extends GetxController {
  final selectedIndex = 0.obs;

  void updatePageIndicator(index) {
    selectedIndex.value = index;
  }

}
