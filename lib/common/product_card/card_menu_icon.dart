import 'package:e_commerce/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class CardCounterIcon extends StatelessWidget {
  const CardCounterIcon({
    Key? key,
    required this.onPressed,
    required this.iconColor,
  }) : super(key: key);

  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            alignment: Alignment.center,
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: TColor.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              '2',
              style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: TColor.white,
                    fontSizeFactor: 0.85,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
