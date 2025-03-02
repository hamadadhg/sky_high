// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:sky_high/core/constant/duration_constant.dart';
import 'package:sky_high/core/helpers/go_go_router_helper.dart';
import 'package:sky_high/features/animation/presentation/views/widgets/custom_climate.dart';
import 'package:sky_high/features/animation/presentation/views/widgets/custom_snow_fall_animation.dart';

class CustomAnimationViewBody extends StatefulWidget {
  const CustomAnimationViewBody({super.key});

  @override
  State<CustomAnimationViewBody> createState() =>
      _CustomAnimationViewBodyState();
}

class _CustomAnimationViewBodyState extends State<CustomAnimationViewBody> {
  bool isSnowing = false;

  void startAnimation() {
    setState(() {
      isSnowing = true;
    });
    Future.delayed(kMilliseconds2650, () {
      goGoRouterHelper(context: context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomClimate(onTap: startAnimation),
        if (isSnowing) const Positioned.fill(child: CustomSnowFallAnimation()),
        //positioned.fill to fill the view in animation
      ],
    );
  }
}
