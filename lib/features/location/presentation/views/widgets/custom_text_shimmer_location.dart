/*
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sky_high/core/constant/duration_constant.dart';
import 'package:sky_high/core/styles/style_to_colors.dart';
import 'package:sky_high/core/styles/style_to_texts.dart';

class CustomTextShimmerLocation extends StatelessWidget {
  const CustomTextShimmerLocation({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Shimmer.fromColors(
      baseColor: StyleToColors.whiteColor,
      highlightColor: Colors.amberAccent,
      period: kOneSeconds,
      child: Text(
        text,
        style: StyleToTexts.textStyle16.copyWith(fontSize: height * 0.04),
      ),
    );
  }
}
*/
