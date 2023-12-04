import 'package:e_commerce/features/personalization/controller/onboarding_controller/onboarding_controller.dart';
import 'package:e_commerce/utils/constant/colors.dart';
import 'package:e_commerce/utils/constant/sizes.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotIndicator extends StatelessWidget {
  const OnBoardingDotIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: TDeviceUtility.getBottomNavigationBarHeight(),
      left: TSize.defaultSpace,
      child: SmoothPageIndicator(
        controller: OnBoardingController.instance.pageController,
        effect: const ExpandingDotsEffect(
          activeDotColor: TColor.dark,
          dotHeight: 6,
        ),
        onDotClicked: OnBoardingController.instance.dotNavigationClick,
        count: 3,
      ),
    );
  }
}
