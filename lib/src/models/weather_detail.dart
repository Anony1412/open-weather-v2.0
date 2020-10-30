import 'package:open_weather_v2/src/models/country.dart';
import 'package:open_weather_v2/src/models/temperature.dart';
import 'package:open_weather_v2/src/models/wind.dart';

class WeatherDetail {
  final String cityName;
  final String dayName;
  final int visibility;

  // final List<Weather> weathers;
  final Temperature temperature;
  final Wind wind;
  final Country country;

  WeatherDetail({
    this.cityName,
    this.dayName,
    this.visibility,
    // this.weathers,
    this.temperature,
    this.wind,
    this.country,
  });

  factory WeatherDetail.fromJson(Map<String, dynamic> json) {
    return WeatherDetail(
      cityName: json["name"],
      dayName: "Today",
      visibility: json["visibility"],
      // weathers: parseListWeather(json["main"]),
      temperature: Temperature.fromJson(json["main"]),
      wind: Wind.fromJson(json["wind"]),
      country: Country.fromJson(json["sys"]),
    );
  }

  // List<Weather> parseListWeather(HashMap<String, dynamic> jsonArray) {
  //   return jsonArray.map<Weather>((json) => Weather.fromJson(json)).toList();
  // }

  @override
  String toString() {
    return "Weather: {${this.cityName}, ${this.dayName}, ${this.visibility}, {this.weather}, ${this.temperature}, ${this.wind}, ${this.country}}";
  }
}
