import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Features/Splash/presentation/views/splash_view.dart';
import 'constents.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kPrimaryColor,
        fontFamily: kFontFamily,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
