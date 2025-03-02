import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_high/core/helpers/outline_input_border_helper.dart';
import 'package:sky_high/core/helpers/push_go_router_without_location_helper.dart';
import 'package:sky_high/core/styles/style_to_colors.dart';
import 'package:sky_high/core/styles/style_to_texts.dart';
import 'package:sky_high/features/weather/presentation/managers/cubits/weather_cubit/weather_cubit.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController textController = TextEditingController();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.015),
      child: TextField(
        controller: textController,
        style: StyleToTexts.textStyle14.copyWith(fontSize: size.height * 0.023),
        cursorColor: StyleToColors.whiteColor,
        onSubmitted: (value) {
          if (value.isNotEmpty) {
            context.read<WeatherCubit>().weatherMethodCubit(cityName: value);
            pushGoRouterWithoutHelper(context: context);
            textController.clear();
            //to delete the text in TextField after navigator
          }
        },
        decoration: InputDecoration(
          enabledBorder: outlineInputBorderHelper(height: size.height),
          focusedBorder: outlineInputBorderHelper(height: size.height),
          labelText: 'Enter The City',
          floatingLabelAlignment: FloatingLabelAlignment.center,
          labelStyle: StyleToTexts.textStyle16.copyWith(
            fontSize: size.height * 0.023,
          ),
          floatingLabelStyle: StyleToTexts.textStyle16.copyWith(
            fontSize: size.height * 0.024,
          ),
        ),
      ),
    );
  }
}
