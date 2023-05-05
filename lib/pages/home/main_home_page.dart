import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/widgets/big_text.dart';
import 'package:food/widgets/small_text.dart';
import '../../utils/colors.dart';
import 'food_page_slider.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class MainHomePage extends StatelessWidget {
  // getData() async {
  //   var response =
  //       await http.get(Uri.parse('http://localhost:8000/api/category'));
  //   if (response.statusCode == 200) {
  //     var json = jsonDecode(response.body);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // This is header Section
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 30.h, bottom: 15.h, left: 20.w, right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(
                          text: "Bangladesh",
                          color: AppColors.mainColor,
                          size: 30.sp,
                        ),
                        Row(
                          children: const [
                            SmallText(
                              text: "Fulgazi",
                              color: Colors.black54,
                            ),
                            Icon(Icons.arrow_drop_down_outlined)
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: 45.h,
                      height: 45.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: AppColors.mainColor),
                      child: Icon(
                        Icons.search,
                        size: 24.w,
                      ),
                    )
                  ],
                ),
              ),
            ),
            // This is Slider Section
            const Expanded(
                child: SingleChildScrollView(child: FoodPageSlider())),
            // This is dot Indecator Section
          ],
        ),
      ),
    );
  }
}
