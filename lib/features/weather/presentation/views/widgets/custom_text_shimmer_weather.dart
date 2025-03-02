import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sky_high/core/styles/style_to_colors.dart';

class CustomTextShimmerWeather extends StatelessWidget {
  const CustomTextShimmerWeather({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Shimmer.fromColors(
      baseColor: StyleToColors.grey700Color,
      highlightColor: StyleToColors.grey300Color,
      child: SizedBox(
        height: height * 0.025,
        child: AspectRatio(
          aspectRatio: 6 / 1,
          child: Container(color: StyleToColors.whiteColor),
        ),
      ),
    );
  }
}
