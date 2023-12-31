import 'package:e_commerce/utils/constant/colors.dart';
import 'package:e_commerce/utils/constant/text_strings.dart';
import 'package:e_commerce/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';

class TermsAndConditionText extends StatefulWidget {
  const TermsAndConditionText({
    super.key,
  });

  @override
  State<TermsAndConditionText> createState() => _TermsAndConditionTextState();
}

class _TermsAndConditionTextState extends State<TermsAndConditionText> {
  bool isAgree = false;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          height: 25,
          width: 25,
          child: Checkbox(
            value: isAgree,
            onChanged: (value) {
              setState(() {
                isAgree = value!;
              });
            },
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
