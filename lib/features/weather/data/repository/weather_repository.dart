import 'package:dartz/dartz.dart';
import 'package:sky_high/core/errors/failures.dart';
import 'package:sky_high/features/weather/presentation/managers/models/location_and_current_model/location_and_current_model.dart';

abstract class WeatherRepository {
  Future<Either<Failures, LocationAndCurrentModel>> fetchWeatherData({
    required String cityName,
  });
}
