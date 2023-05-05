import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const IconAndTextWidget(
      {super.key,
      required this.icon,
      required this.text,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 24.w,
          color: iconColor,
        ),
        SizedBox(width: 5.w),
        SmallText(text: text)
      ],
    );
  }
}
