import 'package:flutter/material.dart';
import 'package:sky_high/features/location/presentation/views/widgets/custom_text_shimmer_location.dart';

class CustomTextLocation extends StatelessWidget {
  const CustomTextLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomTextShimmerLocation(text: 'My'),
        CustomTextShimmerLocation(text: 'Location'),
      ],
    );
  }
}
