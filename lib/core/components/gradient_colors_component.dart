import 'package:flutter/material.dart';
import 'package:sky_high/core/styles/style_to_colors.dart';

class GradientColorsComponent extends StatelessWidget {
  const GradientColorsComponent({super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            StyleToColors.littleBlueColor,
            StyleToColors.mediumBlueColor,
            StyleToColors.deepBlueColor,
          ],
        ),
      ),
      child: widget,
    );
  }
}
