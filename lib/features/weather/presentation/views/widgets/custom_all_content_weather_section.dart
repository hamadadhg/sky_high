/*
import 'package:flutter/material.dart';
import 'package:sky_high/core/styles/style_to_texts.dart';
import 'package:sky_high/features/weather/presentation/managers/models/location_and_current_model/location_and_current_model.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_app_bar.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_information_about_weather.dart';

class CustomAllContentWeatherSection extends StatelessWidget {
  const CustomAllContentWeatherSection({
    super.key,
    required this.locationAndCurrentModel,
  });
  final LocationAndCurrentModel locationAndCurrentModel;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        CustomAppBar(locationAndCurrentModel: locationAndCurrentModel),
        CustomInformationAboutWeather(
          locationAndCurrentModel: locationAndCurrentModel,
        ),
        SizedBox(height: height * 0.035),
        Text(
          locationAndCurrentModel.forecastDayModel[0].weatherStatus,
          textAlign: TextAlign.center,
          style: StyleToTexts.textStyle16.copyWith(fontSize: height * 0.04),
        ),
        //remember forecastDayModel[0] it's mean all data in first day, so it's not mean just first data
      ],
    );
  }
}
*/
