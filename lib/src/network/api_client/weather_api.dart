import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:open_weather_v2/src/models/weather_detail.dart';

class WeatherApi {
  final _baseUrl =
      "http://api.openweathermap.org/data/2.5/weather?q=hanoi,vn&appid=d030c89a98fb735c80a34dccbfd57191";

  Future<WeatherDetail> getWeatherByCityName(String cityName) async {
    Response response;
    WeatherDetail weatherDetail;

    try {
      response = await Dio().get(_baseUrl);
      if (response.statusCode == 200) {
        log("${WeatherDetail.fromJson(response.data)}");
        weatherDetail = WeatherDetail.fromJson(response.data);
      }
    } catch (e) {
      log("Error: $e");
    }
    return weatherDetail;
  }
}
