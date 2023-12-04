import 'package:e_commerce/features/authentication/controller/onboarding_controller/onboarding_controller.dart';
import 'package:get/get.dart';

class DependencyInjection extends GetxController {
 static get controller => Get.lazyPut(() => OnBoardingController());
}
