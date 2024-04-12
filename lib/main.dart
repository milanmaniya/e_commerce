import 'package:e_commerce/utils/constants/consts.dart';
import 'package:e_commerce/views/splash_screens/splash_screens.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyADydHfzywdWmyeum-RZhjeYg1mAkFatf4",
      appId: "codeland-b68f9",
      messagingSenderId: "1:1086237371512:android:6d3b01aad50a4a04ec918d",
      projectId: "codeland-b68f9",
      storageBucket: "codeland-b68f9.appspot.com",
    ),
  );
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
        // useMaterial3: true,
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
