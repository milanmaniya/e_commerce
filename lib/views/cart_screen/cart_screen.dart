import 'package:e_commerce/utils/constants/consts.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: "Cart is Empty!"
          .text
          .color(darkFontGrey)
          .fontFamily(semibold)
          .makeCentered(),
    );
  }
}
