import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/widgets/small_text.dart';

import '../utils/colors.dart';
import 'big_text.dart';
import 'icon_and_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: 26.sp,
        ),
        SizedBox(height: 15.h),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: AppColors.mainColor,
                        size: 15.w,
                      )),
            ),
            const SmallText(text: "4.5"),
            SizedBox(width: 10.w),
            const SmallText(text: "1287"),
            SizedBox(width: 10.w),
            const SmallText(text: "Comments"),
          ],
        ),
        SizedBox(height: 15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
