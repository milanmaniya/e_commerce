import 'package:e_commerce/features/authentication/controller/onboarding_controller/onboarding_controller.dart';
import 'package:e_commerce/features/authentication/screens/onboarding_screen/widgets/onboarding_dot_indicator.dart';
import 'package:e_commerce/features/authentication/screens/onboarding_screen/widgets/onboarding_next_button.dart';
import 'package:e_commerce/features/authentication/screens/onboarding_screen/widgets/onboarding_page.dart';
import 'package:e_commerce/features/authentication/screens/onboarding_screen/widgets/onboarding_skip_button.dart';
import 'package:e_commerce/utils/constant/image_string.dart';
import 'package:e_commerce/utils/constant/text_strings.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: OnBoardingController.instance.updatePageIndicator,
            controller: OnBoardingController.instance.pageController,
            children: const [
              OnBoardingPage(
                imageString: TImages.onBoardingScreen1,
                title: TTexts.onBordingTitle1,
                subTitle: TTexts.onBordingSubtitleTitle1,
              ),
              OnBoardingPage(
                imageString: TImages.onBoardingScreen2,
                title: TTexts.onBordingTitle2,
                subTitle: TTexts.onBordingSubtitleTitle2,
              ),
              OnBoardingPage(
                imageString: TImages.onBoardingScreen3,
                title: TTexts.onBordingTitle3,
                subTitle: TTexts.onBordingSubtitleTitle3,
              ),
            ],
          ),
          const OnBoardingSkipButton(),
          const OnBoardingDotIndicator(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
