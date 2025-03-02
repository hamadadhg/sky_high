/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_high/features/weather/presentation/managers/cubits/weather_cubit/weather_cubit.dart';
import 'package:sky_high/features/weather/presentation/managers/cubits/weather_cubit/weather_state.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_all_content_weather_section.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_forecast_section.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_shimmer_loading_state.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_text_error.dart';

class CustomWeatherViewBody extends StatelessWidget {
  const CustomWeatherViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    //for begin use SizedBox.expand to make the Column(); take the all empty space becuase the gradient doesn't work because Column take space(how many it want) and now there are no any widgets in children
    double height = MediaQuery.of(context).size.height;
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        if (state is WeatherSuccessState) {
          return CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    SizedBox(height: height * 0.015),
                    CustomAllContentWeatherSection(
                      locationAndCurrentModel: state.dataInSuccessCubit,
                    ),
                    SizedBox(height: height * 0.05),
                    CustomForecastSection(
                      forecastDayModel:
                          state.dataInSuccessCubit.forecastDayModel,
                    ),
                    SizedBox(height: height * 0.03),
                  ],
                ),
              ),
            ],
          );
        } else if (state is WeatherFailureState) {
          return CustomTextError(text: state.errorMessageInCubit);
        } else {
          return const CustomShimmerLoadingState();
        }
      },
    );
  }
}
*/
