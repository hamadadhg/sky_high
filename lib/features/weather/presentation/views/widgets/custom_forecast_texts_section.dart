/*
import 'package:flutter/material.dart';
import 'package:sky_high/core/helpers/date_time_helper.dart';
import 'package:sky_high/core/styles/style_to_colors.dart';
import 'package:sky_high/core/styles/style_to_texts.dart';
import 'package:sky_high/features/weather/presentation/managers/models/forecast_day_model/forecast_day_model.dart';

class CustomForecastTextsSection extends StatelessWidget {
  const CustomForecastTextsSection({super.key, required this.forecastDayModel});
  final ForecastDayModel forecastDayModel;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Text(
          dateTimeHelper(
            wantToParse: forecastDayModel.day,
            format: 'E',
          ).toUpperCase(),
          style: StyleToTexts.textStyle13.copyWith(
            color: StyleToColors.skyBlueColor,
            fontSize: height * 0.03,
          ),
        ),
        Text(
          '${(forecastDayModel.temperature).round()}°C',
          style: StyleToTexts.textStyle13.copyWith(fontSize: height * 0.0225),
        ),
        Text(
          dateTimeHelper(
            wantToParse: forecastDayModel.date,
            format: 'd/M/yyyy',
          ),
          style: StyleToTexts.textStyle13.copyWith(fontSize: height * 0.022),
        ),
      ],
    );
  }
}
*/
