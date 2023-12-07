import 'package:e_commerce/common/product_card/card_menu_icon.dart';
import 'package:e_commerce/common/widget/app_bar/app_bar.dart';
import 'package:e_commerce/utils/constant/colors.dart';
import 'package:e_commerce/utils/constant/text_strings.dart';
import 'package:flutter/material.dart';


class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      action: [
        CardCounterIcon(
          onPressed: () {},
          iconColor: TColor.white,
        ),
      ],
      titles: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColor.grey),
          ),
          Text(
            TTexts.homeAppBarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: TColor.white),
          ),
        ],
      ),
    );
  }
}
