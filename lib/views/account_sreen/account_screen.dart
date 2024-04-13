import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/common/widgets/bg_widget.dart';
import 'package:e_commerce/controller/auth_controller.dart';
import 'package:e_commerce/utils/constants/consts.dart';
import 'package:e_commerce/utils/constants/icon_lists.dart';
import 'package:e_commerce/views/account_sreen/components/details_card.dart';
import 'package:e_commerce/views/account_sreen/edit_account_screen.dart';
import 'package:e_commerce/views/auth_screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountSCreen extends StatefulWidget {
  const AccountSCreen({super.key});

  @override
  State<AccountSCreen> createState() => _AccountSCreenState();
}

class _AccountSCreenState extends State<AccountSCreen> {
  final controller = Get.put(AuthContoller());

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
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

            return SafeArea(
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.edit,
                        color: whiteColor,
                      ),
                    ).onTap(() {
                      Get.to(
                        () => EditAccountScreen(
                          data: data,
                        ),
                      );
                    }),
                    Row(
                      children: [
                        data['image'] == null
                            ? Image.asset(
                                imgProfile2,
                                width: 90,
                                fit: BoxFit.cover,
                              ).box.clip(Clip.antiAlias).roundedFull.make()
                            : Image.file(
                                File(
                                  data['image'],
                                ),
                                width: 100,
                                fit: BoxFit.cover,
                              ).box.clip(Clip.antiAlias).roundedFull.make(),
                        10.widthBox,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              data['name']
                                  .toString()
                                  .text
                                  .fontFamily(semibold)
                                  .white
                                  .make(),
                              5.heightBox,
                              data['email'].toString().text.white.make(),
                            ],
                          ),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: whiteColor,
                            ),
                          ),
                          onPressed: () async {
                            controller.signOutMethod(context);
                            Get.offAll(() => const LoginScreen());
                          },
                          child:
                              "Logout".text.white.fontFamily(semibold).make(),
                        )
                      ],
                    ),
                    20.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        detailsCard(
                            count: data['card_count'].toString(),
                            title: "In Your Cart",
                            width: context.screenWidth / 3.3),
                        detailsCard(
                            count: data['wishlist_count'].toString(),
                            title: "In Your Wishlist",
                            width: context.screenWidth / 3.3),
                        detailsCard(
                            count: data['order_count'].toString(),
                            title: "Your Orders",
                            width: context.screenWidth / 3.3),
                      ],
                    ),
                    20.heightBox,
                    ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, index) => const Divider(
                        color: lightGrey,
                      ),
                      itemCount: profileButtonList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Image.asset(
                            profileButtonIcons[index],
                            width: 22,
                          ),
                          title: profileButtonList[index]
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                        );
                      },
                    ).box.white.shadowSm.roundedSM.make(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
