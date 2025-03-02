import 'package:flutter/material.dart';
import 'package:sky_high/core/components/gradient_colors_component.dart';
import 'package:sky_high/features/animation/presentation/views/widgets/custom_animation_view_body.dart';

class AnimationView extends StatelessWidget {
  const AnimationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GradientColorsComponent(widget: CustomAnimationViewBody()),
    );
  }
}
