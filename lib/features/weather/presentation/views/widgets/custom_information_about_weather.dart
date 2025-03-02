import 'package:flutter/material.dart';
import 'package:sky_high/features/weather/presentation/managers/models/location_and_current_model/location_and_current_model.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_information_weather_texts_section.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_cached_network_image.dart';

class CustomInformationAboutWeather extends StatelessWidget {
  const CustomInformationAboutWeather({
    super.key,
    required this.locationAndCurrentModel,
  });
  final LocationAndCurrentModel locationAndCurrentModel;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomInformationWeatherTextsSection(
          locationAndCurrentModel: locationAndCurrentModel,
        ),
        Transform.translate(
          offset: Offset(size.width * -0.02, size.height * 0.01),
          child: CustomCachedNetworkImage(
            imageUrl:
                'https:${locationAndCurrentModel.forecastDayModel[0].image}',
            percentToImage: 0.35,
            percentToIconError: 0.2,
            percentToImageLoading: 0.25,
            aspectRatio: 2.5 / 3,
          ),
        ),
      ],
    );
  }
}
