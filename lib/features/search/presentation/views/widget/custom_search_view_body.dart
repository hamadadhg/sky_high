import 'package:flutter/material.dart';
import 'package:sky_high/features/search/presentation/views/widget/custom_page_view.dart';
import 'package:sky_high/features/search/presentation/views/widget/custom_smooth_page_indicator.dart';

class CustomSearchViewBody extends StatefulWidget {
  const CustomSearchViewBody({super.key});

  @override
  State<CustomSearchViewBody> createState() => _CustomSearchViewBodyState();
}

class _CustomSearchViewBodyState extends State<CustomSearchViewBody> {
  PageController pageController = PageController();
  //controll on everything in page and especially scroll
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(height: height * 0.02),
        CustomSmoothPageIndicator(pageController: pageController),
        CustomPageView(pageController: pageController),
      ],
    );
  }
}
