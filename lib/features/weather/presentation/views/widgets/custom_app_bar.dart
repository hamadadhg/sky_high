import 'package:flutter/material.dart';
import 'package:sky_high/core/styles/style_to_texts.dart';
import 'package:sky_high/features/weather/presentation/managers/models/location_and_current_model/location_and_current_model.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.locationAndCurrentModel});
  final LocationAndCurrentModel locationAndCurrentModel;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            locationAndCurrentModel.cityName,
            style: StyleToTexts.textStyle18.copyWith(
              fontSize: size.height * 0.043,
            ),
          ),
          Text(
            '${(locationAndCurrentModel.forecastDayModel[0].temperature).round()}°C',
            style: StyleToTexts.textStyle18.copyWith(
              fontSize: size.height * 0.06,
            ),
          ),
          //remember forecastDayModel[0] it's mean all data in first day, so it's not mean just first data
        ],
      ),
    );
  }
}
