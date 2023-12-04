import 'package:e_commerce/utils/constant/colors.dart';
import 'package:e_commerce/utils/constant/text_strings.dart';
import 'package:e_commerce/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';


class TermsAndConditionText extends StatelessWidget {
  const TermsAndConditionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          height: 25,
          width: 25,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${TTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: TTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColor.white : TColor.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColor.white : TColor.primary,
                    ),
              ),
              TextSpan(
                text: ' ${TTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: TTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColor.white : TColor.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColor.white : TColor.primary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
