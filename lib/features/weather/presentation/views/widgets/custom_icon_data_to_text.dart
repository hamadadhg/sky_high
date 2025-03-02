import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_icon_with_opacity.dart';

class CustomIconDataToText extends StatelessWidget {
  const CustomIconDataToText({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const CustomIconWithOpacity(iconData: Icons.water_drop),
        SizedBox(height: size.height * 0.007),
        const CustomIconWithOpacity(iconData: Icons.air),
        SizedBox(height: size.height * 0.007),
        Transform.translate(
          offset: Offset(size.width * 0.01, 0),
          child: const CustomIconWithOpacity(
            iconData: FontAwesomeIcons.temperatureHigh,
          ),
        ),
        SizedBox(height: size.height * 0.007),
        const CustomIconWithOpacity(
          iconData: FontAwesomeIcons.temperatureQuarter,
        ),
      ],
    );
  }
}
