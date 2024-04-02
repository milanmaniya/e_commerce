import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/consts.dart';
import 'package:e_commerce/utils/constants/icon_lists.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                color: lightGrey,
                child: TextFormField(
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                    ),
                    fillColor: whiteColor,
                    filled: true,
                    hintText: searchAnything,
                    hintStyle: TextStyle(
                      color: textfieldGrey,
                    ),
                  ),
                ),
              ),
              15.heightBox,
              VxSwiper.builder(
                autoPlay: true,
                height: 200,
                enlargeCenterPage: true,
                scrollPhysics: const BouncingScrollPhysics(),
                itemCount: sliderList.length,
                itemBuilder: (context, index) => Builder(
                  builder: (context) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Card(
                        child: Image.asset(
                          sliderList[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
