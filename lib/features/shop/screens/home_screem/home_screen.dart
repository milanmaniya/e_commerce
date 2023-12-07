// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/features/shop/screens/home_screem/widget/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/common/custom_shape/container/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
