import 'package:e_commerce/common/style/spacing_style.dart';
import 'package:e_commerce/common/widget/login_signup/divider.dart';
import 'package:e_commerce/common/widget/login_signup/social_buttons.dart';
import 'package:e_commerce/features/authentication/screens/login_screen/widgets/login_form.dart';
import 'package:e_commerce/features/authentication/screens/login_screen/widgets/login_header.dart';
import 'package:e_commerce/utils/constant/sizes.dart';
import 'package:e_commerce/utils/constant/text_strings.dart';
import 'package:e_commerce/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // logo, title, sub-title create
              LoginHeader(dark: dark),

              // form  create
              const LoginForm(),

              // divider
              const FormDivider(
                dividerText: TTexts.orSignInWith,
              ),

              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              // footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
