/*
class ForecastDayModel {
  final String day;
  final String weatherStatus;
  final String date;
  final String image;
  final num temperature;
  final num maxTemperature;
  final num minTemperature;
  ForecastDayModel({
    required this.date,
    required this.day,
    required this.image,
    required this.maxTemperature,
    required this.minTemperature,
    required this.temperature,
    required this.weatherStatus,
  });
  factory ForecastDayModel.fromJson({
    required Map<String, dynamic> jsonForecast,
  }) {
    //jsonForecast contain on all data inside ['forecast']['forecastday'], because i determined in service inside for in
    return ForecastDayModel(
      date: jsonForecast['date'],
      day: jsonForecast['date'],
      maxTemperature: jsonForecast['day']['maxtemp_c'],
      minTemperature: jsonForecast['day']['mintemp_c'],
      temperature: jsonForecast['day']['avgtemp_c'],
      weatherStatus: jsonForecast['day']['condition']['text'],
      image: jsonForecast['day']['condition']['icon'],
    );
  }
}
*/
