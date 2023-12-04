import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:e_commerce/dependency_injection.dart';
import 'package:e_commerce/features/authentication/screens/onboarding_screen/onboarding.dart';
import 'package:e_commerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    DependencyInjection.controller;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: TAppTheme.darkTheme,
      theme: TAppTheme.lightTheme,
      home: AnimatedSplashScreen(
        splash: 'assets/logos/TRENDY-logos_black.png',
        centered: true,
        splashIconSize: 550,
        animationDuration: const Duration(
          seconds: 2,
        ),
        duration: 2000,
        nextScreen: const OnBoardingScreen(),
      ),
    );
  }
}
