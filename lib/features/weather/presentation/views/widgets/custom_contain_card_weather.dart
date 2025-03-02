import 'package:flutter/material.dart';
import 'package:sky_high/features/weather/presentation/managers/models/forecast_day_model/forecast_day_model.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_forecast_texts_section.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_cached_network_image.dart';

class CustomContainCardWeather extends StatelessWidget {
  const CustomContainCardWeather({super.key, required this.forecastDayModel});
  final ForecastDayModel forecastDayModel;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(height: height * 0.03),
        CustomCachedNetworkImage(
          imageUrl: 'https:${forecastDayModel.image}',
          percentToImage: 0.1,
          percentToIconError: 0.065,
          percentToImageLoading: 0.1,
          aspectRatio: 1.7 / 2,
        ),
        SizedBox(height: height * 0.03),
        CustomForecastTextsSection(forecastDayModel: forecastDayModel),
      ],
    );
  }
}
