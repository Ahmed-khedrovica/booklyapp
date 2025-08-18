import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Features/splash/prsentation/views/splash_view.dart';

void main() {
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // GetMaterialApp => From GetX Package
    return const GetMaterialApp(
      home: SplashView(),
    );
  }
}
