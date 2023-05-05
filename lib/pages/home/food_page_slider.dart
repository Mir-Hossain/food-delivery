import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/utils/colors.dart';
import 'package:food/widgets/big_text.dart';
import 'package:food/widgets/icon_and_text.dart';
import 'package:food/widgets/small_text.dart';

import '../../widgets/app_column.dart';

class FoodPageSlider extends StatefulWidget {
  const FoodPageSlider({super.key});

  @override
  State<FoodPageSlider> createState() => _FoodPageSliderState();
}

class _FoodPageSliderState extends State<FoodPageSlider> {
  PageController pageController = PageController(viewportFraction: 0.85);
  double currentPageValue = 0.0;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPageValue = pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 280.h,
          // color: Colors.red,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, positon) {
                return _buildpageItem(positon);
              }),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: currentPageValue,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        // Popular Section
        SizedBox(height: 30.h),
        Container(
          margin: EdgeInsets.only(left: 30.w, bottom: 10.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const BigText(text: "Popular"),
              SizedBox(width: 10.w),
              const SmallText(text: " . Pairing")
            ],
          ),
        ),
        ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                child: Row(
                  children: [
                    Container(
                      width: 110.h,
                      height: 110.h,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(15.r),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/image/food2.jpg"))),
                    ),
                    Expanded(
                      child: Container(
                        height: 100.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.r),
                                bottomRight: Radius.circular(20.r))),
                        child: Padding(
                          padding: EdgeInsets.all(10.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const BigText(
                                  text: "Nutration friut meal in China"),
                              const SmallText(
                                  text: "With Chines Chircumistencs"),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  IconAndTextWidget(
                                      icon: Icons.circle_sharp,
                                      text: "Normal",
                                      iconColor: AppColors.iconcolor1),
                                  IconAndTextWidget(
                                      icon: Icons.location_on,
                                      text: "1.7KM",
                                      iconColor: AppColors.mainColor),
                                  IconAndTextWidget(
                                      icon: Icons.access_time_rounded,
                                      text: "37min",
                                      iconColor: AppColors.iconcolor2),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            })
      ],
    );
  }

  Widget _buildpageItem(int index) {
    return Stack(children: [
      Container(
        height: 200.h,
        margin: EdgeInsets.only(left: 5.w, right: 10.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            color: index.isEven
                ? const Color(0xFF69c5df)
                : const Color(0xFF9294cc),
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image/food1.jpg"))),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 120.h,
          // width: 260.w,
          margin: EdgeInsets.only(left: 30.w, right: 30.w, bottom: 10.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5,
                    offset: Offset(0, 5)),
                BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                BoxShadow(color: Colors.white, offset: Offset(5, 0)),
              ]),
          child: Padding(
              padding: EdgeInsets.only(top: 15.h, left: 10.w, right: 10.w),
              child: const AppColumn(text: "Chines Side")),
        ),
      ),
    ]);
  }
}
