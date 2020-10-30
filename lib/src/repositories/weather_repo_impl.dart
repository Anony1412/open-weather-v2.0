import 'package:open_weather_v2/src/models/weather_detail.dart';
import 'package:open_weather_v2/src/network/api_client/weather_api.dart';
import 'package:open_weather_v2/src/repositories/weather_repo.dart';

class WeatherRepoImpl with WeatherRepo {

  WeatherApi _weatherApi = WeatherApi();

  @override
  Future<WeatherDetail> getWeatherByCityName(String cityName) =>
      _weatherApi.getWeatherByCityName(cityName);
}
