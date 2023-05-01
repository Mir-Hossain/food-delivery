import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food/utils/colors.dart';
import 'package:food/widgets/big_text.dart';
import 'package:food/widgets/icon_and_text.dart';
import 'package:food/widgets/small_text.dart';

class FoodPageSlider extends StatefulWidget {
  const FoodPageSlider({super.key});

  @override
  State<FoodPageSlider> createState() => _FoodPageSliderState();
}

class _FoodPageSliderState extends State<FoodPageSlider> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      // color: Colors.red,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, positon) {
            return _buildpageItem(positon);
          }),
    );
  }

  Widget _buildpageItem(int index) {
    return Stack(children: [
      Container(
        height: 220,
        margin: const EdgeInsets.only(left: 5, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
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
          height: 130,
          margin: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
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
            padding: const EdgeInsets.only(top: 15, left: 20, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(text: "Chines Side"),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(
                          5,
                          (index) => const Icon(
                                Icons.star,
                                color: AppColors.mainColor,
                                size: 15,
                              )),
                    ),
                    const SizedBox(width: 10),
                    SmallText(text: "4.5"),
                    const SizedBox(width: 10),
                    SmallText(text: "1287"),
                    const SizedBox(width: 10),
                    SmallText(text: "Comments"),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    IconAndTextWidget(
                        icon: Icons.circle_sharp,
                        text: "Normal",
                        iconColor: AppColors.iconcolor1),
                    SizedBox(width: 10),
                    IconAndTextWidget(
                        icon: Icons.location_on,
                        text: "1.7KM",
                        iconColor: AppColors.mainColor),
                    SizedBox(width: 10),
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
      ),
    ]);
  }
}
