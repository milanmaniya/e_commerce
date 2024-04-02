import 'package:e_commerce/utils/constants/consts.dart';
import 'package:e_commerce/views/splash_screens/splash_screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      title: appname,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.transparent,
        fontFamily: regular,
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
