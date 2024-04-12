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
        body: SafeArea(
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
                  Get.to(() => const EditAccountScreen());
                }),
                Row(
                  children: [
                    Image.asset(
                      imgProfile2,
                      width: 90,
                      fit: BoxFit.cover,
                    ).box.clip(Clip.antiAlias).roundedFull.make(),
                    10.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Dummy User".text.fontFamily(semibold).white.make(),
                          5.heightBox,
                          "Customber@example.com".text.white.make(),
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
                      child: "Logout".text.white.fontFamily(semibold).make(),
                    )
                  ],
                ),
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    detailsCard(
                        count: "00",
                        title: "In Your Cart",
                        width: context.screenWidth / 3.3),
                    detailsCard(
                        count: "32",
                        title: "In Your Wishlist",
                        width: context.screenWidth / 3.3),
                    detailsCard(
                        count: "67",
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
        ),
      ),
    );
  }
}
