import 'dart:developer';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/common/widgets/bg_widget.dart';
import 'package:e_commerce/common/widgets/custome_textfield.dart';
import 'package:e_commerce/common/widgets/elevated_button.dart';
import 'package:e_commerce/controller/profile_controller.dart';
import 'package:e_commerce/utils/constants/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditAccountScreen extends StatefulWidget {
  const EditAccountScreen({super.key, required this.data});

  final Map data;

  @override
  State<EditAccountScreen> createState() => _EditAccountScreenState();
}

class _EditAccountScreenState extends State<EditAccountScreen> {
  final controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
          ),
          body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection(usersCollections)
                .where('id', isEqualTo: user!.uid)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting &&
                  snapshot.connectionState == ConnectionState.none) {
                return const Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(redColor),
                  ),
                );
              }

              final data = {};
              if (snapshot.hasData) {
                for (var element in snapshot.data!.docs) {
                  log(element.data().toString());

                  data.addAll(element.data());
                }
              }

              controller.txtname.text = data['name'].toString();
              controller.txtpass.text = data['password'].toString();

              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  data['image'] != null
                      ? Image.file(
                          File(
                            data['image'],
                          ),
                          width: 120,
                          fit: BoxFit.cover,
                        ).box.clip(Clip.antiAlias).roundedFull.make()
                      : Image.asset(
                          imgProfile2,
                          width: 120,
                          fit: BoxFit.cover,
                        ).box.clip(Clip.antiAlias).roundedFull.make(),
                  10.heightBox,
                  SizedBox(
                    width: context.screenWidth - 150,
                    child: commonElevatedButton(
                      onPress: () {
                        controller.changeImage(context);
                      },
                      backgroundColor: redColor,
                      foregroundColor: whiteColor,
                      title: 'Change',
                    ),
                  ),
                  10.heightBox,
                  const Divider(
                    color: darkFontGrey,
                  ),
                  20.heightBox,
                  customeTextField(
                    controller: controller.txtname,
                    hint: nameHint,
                    title: name,
                  ),
                  15.heightBox,
                  customeTextField(
                    controller: controller.txtpass,
                    hint: passwordHint,
                    title: password,
                    obscureText: true,
                  ),
                  20.heightBox,
                  commonElevatedButton(
                    onPress: () {
                      controller.changeDetails(
                        context,
                        controller.txtname.text,
                        controller.txtpass.text,
                      );
                    },
                    backgroundColor: redColor,
                    foregroundColor: whiteColor,
                    title: 'Save',
                  ),
                ],
              )
                  .box
                  .shadowMd
                  .padding(const EdgeInsets.all(16))
                  .margin(
                    const EdgeInsets.only(
                      top: 50,
                      left: 10,
                      right: 10,
                    ),
                  )
                  .roundedSM
                  .white
                  .make();
            },
          ),
        ),
      ),
    );
  }
}
