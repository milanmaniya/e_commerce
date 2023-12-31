import 'package:e_commerce/common/widget/login_signup/divider.dart';
import 'package:e_commerce/common/widget/login_signup/social_buttons.dart';
import 'package:e_commerce/features/authentication/screens/sign_up_screen/widgets/signup_form.dart';
import 'package:e_commerce/utils/constant/sizes.dart';
import 'package:e_commerce/utils/constant/text_strings.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              // form
              const SignUpForm(),

              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              // divider
              const FormDivider(dividerText: TTexts.orSignUpWith),

              const SizedBox(
                height: TSize.spaceBtwSections,
              ),
              // social buttons
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
