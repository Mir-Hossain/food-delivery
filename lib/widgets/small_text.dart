import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  const SmallText(
      {super.key,
      this.color = const Color(0xFFccc7c5),
      required this.text,
      this.size = 15,
      this.height = 1.2,
      this.textAlign});
  final Color? color;
  final String text;
  final double size;
  final double height;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          color: color, fontFamily: 'Roboto', fontSize: size, height: height),
    );
  }
}
