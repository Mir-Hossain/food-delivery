import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/utils/colors.dart';
import 'package:food/widgets/small_text.dart';

class ExtendableText extends StatefulWidget {
  final String text;
  const ExtendableText({super.key, required this.text});

  @override
  State<ExtendableText> createState() => _ExtendableTextState();
}

class _ExtendableTextState extends State<ExtendableText> {
  late String firstHalf;
  late String secondhalf;
  bool hiddenText = true;
  double textheight = 180.h;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textheight) {
      firstHalf = widget.text.substring(0, textheight.toInt());
      secondhalf =
          widget.text.substring(textheight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondhalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondhalf.isEmpty
          ? SmallText(
              text: firstHalf,
              size: 16.sp,
              color: AppColors.paraColor,
              textAlign: TextAlign.justify,
            )
          : Column(
              children: [
                SmallText(
                  text:
                      hiddenText ? ("$firstHalf...") : (firstHalf + secondhalf),
                  size: 16.sp,
                  color: AppColors.paraColor,
                  textAlign: TextAlign.justify,
                  height: 1.4,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                          text: "Show more",
                          color: AppColors.mainColor,
                          size: 16.sp),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
