import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_high/core/constant/string_variables_constant.dart';
import 'package:sky_high/features/weather/presentation/managers/cubits/weather_cubit/weather_cubit.dart';

void pushGoRouterWithLocationHelper({
  required BuildContext context,
  double? latitude, //like width line
  double? longitude, //like height line
}) {
  if (latitude != null && longitude != null) {
    context.read<WeatherCubit>().weatherMethodCubit(
      cityName: '$latitude,$longitude',
    );
    //in this helper you assign latitude and longitude to q instead of name, the documentation in api say that to you, so in this view assign this values and in Search view assign name value
    GoRouter.of(context).push(kWeatherViewRouter);
  }
}
