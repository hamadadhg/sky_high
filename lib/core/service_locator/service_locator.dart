import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sky_high/core/services/api_services.dart';
import 'package:sky_high/features/weather/data/repository/weather_repository_implementation.dart';

final GetIt getIt = GetIt.instance;

void serviceLocator() {
  getIt.registerSingleton<WeatherRepositoryImplementation>(
    WeatherRepositoryImplementation(apiServices: ApiServices(dio: Dio())),
  );
}
