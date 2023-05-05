import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(
      {super.key,
      required this.icon,
      this.bgColor = const Color(0xFFfcf4e4),
      this.iconColor = const Color(0xFF756d54),
      this.size = 40});
  final IconData icon;
  final Color bgColor;
  final Color iconColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2), color: bgColor),
      child: Icon(
        icon,
        color: iconColor,
        size: 16.w,
      ),
    );
  }
}
