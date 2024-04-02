import 'package:e_commerce/common/widget/bg_widget.dart';
import 'package:e_commerce/common/widget/common_logo_container.dart';
import 'package:e_commerce/common/widget/custome_textfield.dart';
import 'package:e_commerce/common/widget/elevated_button.dart';
import 'package:e_commerce/utils/constants/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusNode().unfocus();
      },
      child: bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Column(
              children: [
                (context.screenHeight * 0.10).heightBox,
                appLogoWidget(),
                10.heightBox,
                'Login in to $appname'
                    .text
                    .white
                    .size(22)
                    .fontFamily(bold)
                    .make(),
                15.heightBox,
                Column(
                  children: [
                    customeTextField(
                      title: name,
                      hint: nameHint,
                    ),
                    15.heightBox,
                    customeTextField(
                      title: email,
                      hint: emailHint,
                    ),
                    15.heightBox,
                    customeTextField(
                      title: password,
                      hint: passwordHint,
                    ),
                    15.heightBox,
                    customeTextField(
                      title: retypePassword,
                      hint: passwordHint,
                    ),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          checkColor: redColor,
                          value: isChecked,
                          onChanged: (value) {
                            isChecked = value;
                            setState(() {});
                          },
                        ),
                        Expanded(
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(text: 'I agree to the '),
                                TextSpan(
                                  text: termsCondition,
                                  style: TextStyle(
                                    fontFamily: bold,
                                    color: redColor,
                                  ),
                                ),
                                TextSpan(text: ' & '),
                                TextSpan(
                                  text: privacyPolicy,
                                  style: TextStyle(
                                    fontFamily: bold,
                                    color: redColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    10.heightBox,
                    commonElevatedButton(
                      backgroundColor: redColor,
                      foregroundColor: whiteColor,
                      onPress: () {},
                      title: login,
                    ),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        alreadyHaveAnAccount.text.make(),
                        3.widthBox,
                        login.text
                            .fontFamily(bold)
                            .color(redColor)
                            .make()
                            .onTap(() {
                          Get.back();
                        })
                      ],
                    ),
                  ],
                )
                    .box
                    .white
                    .width(context.screenWidth - 30)
                    .padding(
                      const EdgeInsets.all(16),
                    )
                    .rounded
                    .make(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
