// ignore_for_file: use_build_context_synchronously

import 'package:e_commerce/common/widgets/bg_widget.dart';
import 'package:e_commerce/common/widgets/common_logo_container.dart';
import 'package:e_commerce/common/widgets/custome_textfield.dart';
import 'package:e_commerce/common/widgets/elevated_button.dart';
import 'package:e_commerce/controller/auth_controller.dart';
import 'package:e_commerce/utils/constants/consts.dart';
import 'package:e_commerce/views/dashboard_screen/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isChecked = false;

  final controller = Get.put(AuthContoller());

  final TextEditingController txtname = TextEditingController();
  final TextEditingController txtemail = TextEditingController();
  final TextEditingController txtpassword = TextEditingController();
  final TextEditingController txtRepassword = TextEditingController();

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
                Obx(
                  () => Column(
                    children: [
                      customeTextField(
                        title: name,
                        hint: nameHint,
                        controller: txtname,
                      ),
                      15.heightBox,
                      customeTextField(
                        title: email,
                        hint: emailHint,
                        controller: txtemail,
                      ),
                      15.heightBox,
                      customeTextField(
                        obscureText: true,
                        title: password,
                        controller: txtpassword,
                        hint: passwordHint,
                      ),
                      15.heightBox,
                      customeTextField(
                        obscureText: true,
                        title: retypePassword,
                        controller: txtRepassword,
                        hint: passwordHint,
                      ),
                      10.heightBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
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
                            "I agree to the ".text.make(),
                            termsCondition.text
                                .color(redColor)
                                .fontFamily(semibold)
                                .make(),
                            " & ".text.make(),
                            privacyPolicy.text
                                .color(redColor)
                                .fontFamily(semibold)
                                .make(),
                          ],
                        ),
                      ),
                      10.heightBox,
                      controller.isLoadding.value
                          ? const Center(
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation(redColor),
                              ),
                            )
                          : commonElevatedButton(
                              backgroundColor: redColor,
                              foregroundColor: whiteColor,
                              onPress: () async {
                                controller.isLoadding(true);
                                if (isChecked != false) {
                                  try {
                                    await controller
                                        .signUpMethod(
                                      email: txtemail.text,
                                      password: txtpassword.text,
                                      context: context,
                                    )
                                        .then((value) {
                                      controller.storeUserData(
                                        name: txtname.text,
                                        password: txtpassword.text,
                                        email: txtemail.text,
                                        image: '',
                                      );
                                    }).then((value) {
                                      VxToast.show(
                                        context,
                                        msg: 'Logged in successfully',
                                      );
                                      Get.offAll(() => const DashBoardScreen());
                                    });
                                  } catch (e) {
                                    VxToast.show(context, msg: e.toString());
                                    firebaseAuth.signOut();
                                  }
                                } else {
                                  controller.isLoadding(false);
                                }
                              },
                              title: signup,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
