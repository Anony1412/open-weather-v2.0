import 'package:open_weather_v2/src/models/weather_detail.dart';

abstract class WeatherRepo {
  Future<WeatherDetail> getWeatherByCityName(String cityName);
}
