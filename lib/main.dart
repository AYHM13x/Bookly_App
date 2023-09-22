import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Features/Splash/presentation/views/splash_view.dart';
import 'constents.dart';
import 'core/utils/assets.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kPrimaryColor,
        fontFamily: AssetsData.familyOfFont,
      ),
      home: const SplashView(),
    );
  }
}
