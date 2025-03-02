/*
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sky_high/core/errors/failures.dart';
import 'package:sky_high/core/services/api_services.dart';
import 'package:sky_high/features/weather/data/repository/weather_repository.dart';
import 'package:sky_high/features/weather/presentation/managers/models/location_and_current_model/location_and_current_model.dart';

class WeatherRepositoryImplementation implements WeatherRepository {
  ApiServices apiServices;
  WeatherRepositoryImplementation({required this.apiServices});
  @override
  Future<Either<Failures, LocationAndCurrentModel>> fetchWeatherData({
    required String cityName,
  }) async {
    try {
      var getOnDataFromFullRequest = await apiServices.getMethod(
        cityName: cityName,
      );
      return right(getOnDataFromFullRequest);
    } on DioException catch (e) {
      return left(ServerError.fromDioException(dioException: e));
    } on Exception catch (e) {
      return left(ServerError(errorMessageInFailureClass: e.toString()));
    }
  }
}
*/
