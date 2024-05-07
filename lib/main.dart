import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'core/constants/appColors.dart';
import 'presentation/pages/home page/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: AppColors.appWhite),
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.appWhite),
          useMaterial3: true,
        ),
        home: const HomePage(),
      );
    });
  }
}
