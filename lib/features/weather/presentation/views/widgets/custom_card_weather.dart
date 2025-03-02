/*
import 'package:flutter/material.dart';
import 'package:sky_high/core/styles/style_to_colors.dart';
import 'package:sky_high/features/weather/presentation/managers/models/forecast_day_model/forecast_day_model.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_contain_card_weather.dart';

class CustomCardWeather extends StatelessWidget {
  const CustomCardWeather({super.key, required this.forecastDayModel});
  final ForecastDayModel forecastDayModel;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.29,
      child: AspectRatio(
        aspectRatio: 0.9 / 2,
        child: Container(
          decoration: BoxDecoration(
            color: StyleToColors.transparentBlueColor.withAlpha(220),
            borderRadius: BorderRadius.circular(height * 0.01),
          ),
          child: CustomContainCardWeather(forecastDayModel: forecastDayModel),
        ),
      ),
    );
  }
}
*/
