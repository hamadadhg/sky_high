import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_high/core/constant/string_variables_constant.dart';

void pushGoRouterWithoutHelper({required BuildContext context}) {
  GoRouter.of(context).push(kWeatherViewRouter);
}
