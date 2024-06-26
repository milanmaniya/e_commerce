import 'package:e_commerce/common/widgets/exit_dialog.dart';
import 'package:e_commerce/controller/dashboard_controller.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final controller = Get.put(DashBoardController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => exitDialog(context),
        );
        return false;
      },
      child: Scaffold(
        body: Column(
          children: [
            Obx(
              () => Expanded(
                child: controller.navBody[controller.currentIndex.value],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            backgroundColor: whiteColor,
            selectedItemColor: redColor,
            selectedLabelStyle: const TextStyle(color: redColor),
            onTap: (value) {
              controller.currentIndex.value = value;
            },
            items: controller.navBarItem,
          ),
        ),
      ),
    );
  }
}
