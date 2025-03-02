/*
import 'package:flutter/material.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_icon_data_to_text.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_text_data_to_icon.dart';

class CustomIconWithText extends StatelessWidget {
  const CustomIconWithText({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.015),
      child: Row(
        children: [
          const CustomIconDataToText(),
          SizedBox(width: size.width * 0.01),
          CustomTextDataToIcon(
            text1: text1,
            text2: text2,
            text3: text3,
            text4: text4,
          ),
        ],
      ),
    );
  }
}
*/
