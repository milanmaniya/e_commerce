import 'package:e_commerce/common/widget/image_text_widgets/vertical_image_text.dart';
import 'package:flutter/material.dart';


class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return VerticalImageText(
            imageUrl: 'assets/icons/categories/shoe_icon.png',
            title: 'Shoes Category',
            onPressed: () {},
          );
        },
      ),
    );
  }
}
