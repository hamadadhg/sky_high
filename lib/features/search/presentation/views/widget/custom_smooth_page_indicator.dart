import 'package:flutter/material.dart';
import 'package:sky_high/core/styles/style_to_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SmoothPageIndicator(
      //SmoothPageIndicator because i want dots when i do scroll
      controller: pageController,
      count: 2, //i want two dots
      effect: JumpingDotEffect(
        activeDotColor: StyleToColors.whiteColor, //color to active dot
        verticalOffset: size.height * 0.015, //height to jump dot
        dotHeight: size.height * 0.015, //height to dot
        dotWidth: size.width * 0.025, //width to dot
        dotColor: StyleToColors.white60Color, //color to inActive dot
        spacing: size.width * 0.02, //space between dots
      ),
    );
  }
}
