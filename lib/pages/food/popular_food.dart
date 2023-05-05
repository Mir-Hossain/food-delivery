import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/utils/colors.dart';
import 'package:food/widgets/app_icon.dart';
import 'package:food/widgets/big_text.dart';
import 'package:food/widgets/extendable_text.dart';
import '../../widgets/app_column.dart';

class PopularFoodDetailes extends StatelessWidget {
  const PopularFoodDetailes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 300.h,
              decoration: const BoxDecoration(
                  color: Colors.amber,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/image/food3.jpg",
                      ))),
            ),
          ),
          Positioned(
              top: 40.h,
              left: 20.w,
              right: 20.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                ],
              )),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 280.h,
            child: Container(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.r),
                        topLeft: Radius.circular(20.w)),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppColumn(
                      text: "Chines Side",
                    ),
                    SizedBox(height: 20.h),
                    const BigText(text: "Introduce"),
                    SizedBox(height: 5.h),
                    const Expanded(
                      child: SingleChildScrollView(
                        child: ExtendableText(
                            text:
                                "I am able to work independently as well as collaboratively with others on teams I am able to work independently as well as collaboratively with others on teams.I am able to work independently as well as collaboratively with others on teams I am able to work independently as well as collaboratively with others on teams. I am able to work independently as well as collaboratively with others on teams I am able to work independently as well as collaboratively with others on teams"),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 110.h,
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.r),
                topLeft: Radius.circular(40.r)),
            color: AppColors.buttonBgColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Colors.white),
              child: Row(
                children: [
                  const Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(width: 10.w),
                  const BigText(text: "0"),
                  SizedBox(width: 10.w),
                  const Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: AppColors.mainColor),
              child: const BigText(
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
