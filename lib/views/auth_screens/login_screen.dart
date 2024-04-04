import 'package:e_commerce/common/widgets/bg_widget.dart';
import 'package:e_commerce/common/widgets/common_logo_container.dart';
import 'package:e_commerce/common/widgets/custome_textfield.dart';
import 'package:e_commerce/common/widgets/elevated_button.dart';
import 'package:e_commerce/utils/constants/consts.dart';
import 'package:e_commerce/utils/constants/icon_lists.dart';
import 'package:e_commerce/views/auth_screens/sign_up_screen.dart';
import 'package:e_commerce/views/dashboard_screen/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
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
                      title: email,
                      hint: emailHint,
                    ),
                    15.heightBox,
                    customeTextField(
                      title: password,
                      hint: passwordHint,
                    ),
                    5.heightBox,
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: forgotPassword.text.make(),
                      ),
                    ),
                    20.heightBox,
                    commonElevatedButton(
                      backgroundColor: redColor,
                      foregroundColor: whiteColor,
                      onPress: () {
                        Get.to(() => const DashBoardScreen());
                      },
                      title: login,
                    ),
                    10.heightBox,
                    createNewAccount.text.color(fontGrey).make(),
                    10.heightBox,
                    commonElevatedButton(
                      backgroundColor: golden,
                      foregroundColor: redColor,
                      onPress: () {
                        Get.to(() => const SignUpScreen());
                      },
                      title: signup,
                    ),
                    10.heightBox,
                    loginWith.text.color(fontGrey).make(),
                    15.heightBox,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        socialIconsList.length,
                        (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: lightGrey,
                            radius: 25,
                            child: Image.asset(
                              socialIconsList[index],
                              width: 30,
                            ),
                          ),
                        ),
                      ),
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
