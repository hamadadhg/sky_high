import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sky_high/core/styles/style_to_colors.dart';

class CustomLoadingImageInCached extends StatelessWidget {
  const CustomLoadingImageInCached({
    super.key,
    required this.percent,
    required this.aspectRatio,
  });
  final double percent;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Shimmer.fromColors(
      baseColor: StyleToColors.grey700Color,
      highlightColor: StyleToColors.grey300Color,
      child: SizedBox(
        height: height * percent,
        child: AspectRatio(
          aspectRatio: aspectRatio,
          child: Container(color: StyleToColors.whiteColor),
        ),
      ),
    );
  }
}
