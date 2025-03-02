import 'package:flutter/material.dart';
import 'package:sky_high/features/location/presentation/views/widgets/custom_location_view_body.dart';
import 'package:sky_high/features/search/presentation/views/widget/custom_text_field.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        controller: pageController,
        children: [
          const Center(child: CustomTextField()),
          const CustomLocationViewBody(),
        ], //put in PageView the views you want to do them scroll
      ),
    );
  }
}
