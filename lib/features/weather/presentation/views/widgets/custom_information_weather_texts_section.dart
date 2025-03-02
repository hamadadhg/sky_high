/*
import 'package:flutter/material.dart';
import 'package:sky_high/core/helpers/date_time_helper.dart';
import 'package:sky_high/core/styles/style_to_texts.dart';
import 'package:sky_high/features/weather/presentation/managers/models/location_and_current_model/location_and_current_model.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_icon_with_text_section.dart';

class CustomInformationWeatherTextsSection extends StatelessWidget {
  const CustomInformationWeatherTextsSection({
    super.key,
    required this.locationAndCurrentModel,
  });
  final LocationAndCurrentModel locationAndCurrentModel;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Transform.translate(
          offset: Offset(size.width * 0.02, 0),
          child: Text(
            dateTimeHelper(
              wantToParse: locationAndCurrentModel.forecastDayModel[0].day,
              format: 'EEEE',
            ),
            style: StyleToTexts.textStyle15.copyWith(
              fontSize: size.height * 0.035,
            ),
          ),
        ),
        SizedBox(height: size.height * 0.025),
        CustomIconWithTextSection(
          locationAndCurrentModel: locationAndCurrentModel,
        ),
      ],
    );
  }
}
*/
