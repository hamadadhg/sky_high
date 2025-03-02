/*
import 'package:sky_high/features/weather/presentation/managers/models/forecast_day_model/forecast_day_model.dart';

class LocationAndCurrentModel {
  final String cityName;
  final List<ForecastDayModel> forecastDayModel;
  //sure i need to Forecast class because in api the forecast contain on List of data(so you need to for), but in api before forecast you don't need to for
  final num speedWind;
  final num humidity;
  LocationAndCurrentModel({
    required this.cityName,
    required this.forecastDayModel,
    required this.humidity,
    required this.speedWind,
  });
  factory LocationAndCurrentModel.fromJson({
    required Map<String, dynamic> jsonLocationAndCurrent,
    required List<ForecastDayModel> jsonForecastDayList,
  }) {
    return LocationAndCurrentModel(
      cityName: jsonLocationAndCurrent['location']['name'],
      humidity: jsonLocationAndCurrent['current']['humidity'],
      speedWind: jsonLocationAndCurrent['current']['wind_kph'],
      forecastDayModel: jsonForecastDayList,
    );
  }
}
*/
