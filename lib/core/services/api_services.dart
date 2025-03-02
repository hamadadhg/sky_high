import 'package:dio/dio.dart';
import 'package:sky_high/features/weather/presentation/managers/models/forecast_day_model/forecast_day_model.dart';
import 'package:sky_high/features/weather/presentation/managers/models/location_and_current_model/location_and_current_model.dart';

class ApiServices {
  final String apiKey = 'f2ceb25bee0f4d6492b113136242307';
  final String baseUrl = 'https://api.weatherapi.com/v1/forecast.json';
  final Dio dio;
  ApiServices({required this.dio});
  Future<LocationAndCurrentModel> getMethod({required String cityName}) async {
    Response response = await dio.get(
      '$baseUrl?key=$apiKey&q=$cityName&days=3&aqi=no&alerts=no',
    );
    Map<String, dynamic> fullDataFromResponse = response.data;
    List<ForecastDayModel> forecastData = [];
    for (var data in fullDataFromResponse['forecast']['forecastday']) {
      forecastData.add(ForecastDayModel.fromJson(jsonForecast: data));
    } //you get on data inside list forecastday
    return LocationAndCurrentModel.fromJson(
      jsonLocationAndCurrent: fullDataFromResponse,
      jsonForecastDayList: forecastData,
    );
    //sure you should asign two parameter in Locatoin.. because you want take data from api but part you will use for and part you don't use
  }
}
