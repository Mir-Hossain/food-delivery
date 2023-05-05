import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/pages/food/popular_food.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return ScreenUtilInit(
        designSize: Size(width, height),
        builder: (context, child) {
          return const GetMaterialApp(
              debugShowCheckedModeBanner: false, home: PopularFoodDetailes());
        });
  }
}
