import 'package:e_commerce/utils/constant/sizes.dart';
import 'package:e_commerce/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';


class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageString,
  });

  final String title, subTitle, imageString;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSize.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(
              imageString,
            ),
            height: THelperFunction.screenHeight() * 0.6,
            width: THelperFunction.screenWidth() * 0.8,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: TSize.spaceBtwItems,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
