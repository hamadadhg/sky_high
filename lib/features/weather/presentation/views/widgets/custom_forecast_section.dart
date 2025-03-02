import 'package:flutter/material.dart';
import 'package:sky_high/core/styles/style_to_texts.dart';
import 'package:sky_high/features/weather/presentation/managers/models/forecast_day_model/forecast_day_model.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_three_days.dart';

class CustomForecastSection extends StatelessWidget {
  const CustomForecastSection({super.key, required this.forecastDayModel});
  final List<ForecastDayModel> forecastDayModel;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: size.width * 0.022),
          child: Text(
            'Forecast 3 days',
            style: StyleToTexts.textStyle18.copyWith(
              fontSize: size.height * 0.03,
            ),
          ),
        ),
        SizedBox(height: size.height * 0.02),
        CustomThreeDays(forecastDayModel: forecastDayModel),
      ],
    );
  }
}
