import 'package:flutter/material.dart';
import 'package:sky_high/core/components/gradient_colors_component.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_weather_view_body.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: GradientColorsComponent(widget: CustomWeatherViewBody()),
    );
  }
}
