import 'package:open_weather_v2/src/models/country.dart';
import 'package:open_weather_v2/src/models/temperature.dart';
import 'package:open_weather_v2/src/models/weather.dart';
import 'package:open_weather_v2/src/models/wind.dart';

class WeatherDetail {
  final String cityName;
  final String dayName;
  final String visibility;
  final Weather weather;
  final Temperature temperature;
  final Wind wind;
  final Country country;

  WeatherDetail({
    this.cityName,
    this.dayName,
    this.visibility,
    this.weather,
    this.temperature,
    this.wind,
    this.country,
  });
}
