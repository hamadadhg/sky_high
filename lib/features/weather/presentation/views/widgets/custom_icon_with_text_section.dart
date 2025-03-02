import 'package:flutter/material.dart';
import 'package:sky_high/features/weather/presentation/managers/models/location_and_current_model/location_and_current_model.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_icon_with_text.dart';

class CustomIconWithTextSection extends StatelessWidget {
  const CustomIconWithTextSection({
    super.key,
    required this.locationAndCurrentModel,
  });
  final LocationAndCurrentModel locationAndCurrentModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconWithText(
          text1: '${locationAndCurrentModel.humidity}%',
          text2: '${(locationAndCurrentModel.speedWind).round()} km/h',
          text3:
              '${(locationAndCurrentModel.forecastDayModel[0].maxTemperature).round()}°C',
          text4:
              '${(locationAndCurrentModel.forecastDayModel[0].minTemperature).round()}°C',
        ),
      ],
    );
  }
}
