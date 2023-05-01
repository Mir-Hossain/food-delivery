import 'package:flutter/material.dart';
import 'package:food/widgets/big_text.dart';
import 'package:food/widgets/small_text.dart';
import '../utils/colors.dart';
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
                padding: const EdgeInsets.only(
                    top: 30, bottom: 15, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(
                          text: "Bangladesh",
                          color: AppColors.mainColor,
                          size: 25,
                        ),
                        Row(
                          children: [
                            SmallText(
                              text: "Fulgazi",
                              color: Colors.black54,
                            ),
                            const Icon(Icons.arrow_drop_down_outlined)
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.mainColor),
                      child: const Icon(Icons.search),
                    )
                  ],
                ),
              ),
            ),
            // This is Slider Section
            const FoodPageSlider(),
            // This is dot Indecator Section
          ],
        ),
      ),
    );
  }
}
