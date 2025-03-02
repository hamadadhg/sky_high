import 'package:flutter/material.dart';
import 'package:sky_high/features/weather/presentation/managers/models/forecast_day_model/forecast_day_model.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_card_weather.dart';

class CustomThreeDays extends StatelessWidget {
  const CustomThreeDays({super.key, required this.forecastDayModel});
  final List<ForecastDayModel> forecastDayModel;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: size.width * 0.05),
        CustomCardWeather(forecastDayModel: forecastDayModel[0]),
        CustomCardWeather(forecastDayModel: forecastDayModel[1]),
        CustomCardWeather(forecastDayModel: forecastDayModel[2]),
        SizedBox(width: size.width * 0.05),
      ],
    );
  }
}
