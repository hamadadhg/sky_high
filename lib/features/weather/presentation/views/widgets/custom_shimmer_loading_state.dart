/*
import 'package:flutter/material.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_app_bar_shimmer_section.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_forecast_shimmer_section.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_information_about_weather_shimmer_section.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_text_shimmer_weather.dart';

class CustomShimmerLoadingState extends StatelessWidget {
  const CustomShimmerLoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox.expand(
      //SizedBox.expand to make the Column(); take the all empty space
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.035),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.03),
              const CustomAppBarShimmerSection(),
              SizedBox(height: size.height * 0.06),
              const CustomInformationAboutWeatherShimmerSection(),
              SizedBox(height: size.height * 0.1),
              const CustomTextShimmerWeather(),
              SizedBox(height: size.height * 0.1),
              const CustomForecastShimmerSection(),
            ],
          ),
        ),
      ),
    );
  }
}
*/
