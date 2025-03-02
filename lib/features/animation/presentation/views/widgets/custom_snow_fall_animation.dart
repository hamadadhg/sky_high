/*
import 'package:flutter/material.dart';
import 'package:sky_high/core/constant/duration_constant.dart';
import 'package:sky_high/features/animation/presentation/views/widgets/custom_snow_animation_section.dart';

class CustomSnowFallAnimation extends StatefulWidget {
  const CustomSnowFallAnimation({super.key});

  @override
  State<CustomSnowFallAnimation> createState() =>
      _CustomSnowFallAnimationState();
}

class _CustomSnowFallAnimationState extends State<CustomSnowFallAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController; //controll on animation
  final int acIconTotal = 20; //how many all(total) numbers of icon you want
  final int acIconPerLine = 4; //in one line i want 4 icon

  @override
  void initState() {
    snowAnimationMethod();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomSnowAnimationSection(
      acIconPerLine: acIconPerLine,
      acIconTotal: acIconTotal,
      animationController: animationController,
    );
  }

  void snowAnimationMethod() {
    animationController = AnimationController(
      vsync: this,
      duration: kFourSeconds,
    )..repeat();
    //you don't need to animationController.forward() to make the animation's work, because the .repeat() don't need to .forward(), and remember ..repeat it's mean the code before .. will run first and after it will run the code after ..
  }
}
*/
