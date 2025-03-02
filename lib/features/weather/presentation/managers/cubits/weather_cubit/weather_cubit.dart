import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_high/core/errors/failures.dart';
import 'package:sky_high/features/weather/data/repository/weather_repository_implementation.dart';
import 'package:sky_high/features/weather/presentation/managers/cubits/weather_cubit/weather_state.dart';
import 'package:sky_high/features/weather/presentation/managers/models/location_and_current_model/location_and_current_model.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit({required this.weatherRepositoryImplementation})
    : super(WeatherInitialState());
  final WeatherRepositoryImplementation weatherRepositoryImplementation;
  Future<Either<Failures, LocationAndCurrentModel>> weatherMethodCubit({
    required String cityName,
  }) async {
    emit(WeatherLoadingState());
    var result = await weatherRepositoryImplementation.fetchWeatherData(
      cityName: cityName,
    );
    result.fold(
      (failure) => emit(
        WeatherFailureState(
          errorMessageInCubit: failure.errorMessageInFailureClass,
        ),
      ),
      (weatherData) =>
          emit(WeatherSuccessState(dataInSuccessCubit: weatherData)),
    );
    return result;
  }
}
