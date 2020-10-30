import 'package:flutter/cupertino.dart';
import 'package:open_weather_v2/src/models/weather_detail.dart';
import 'package:open_weather_v2/src/repositories/weather_repo_impl.dart';
import 'package:scoped_model/scoped_model.dart';

class WeatherViewModel extends Model {
  WeatherRepoImpl _weatherRepoImpl = WeatherRepoImpl();

  WeatherDetail weatherDetail;

  void getWeatherByCityName(cityName) async {
    weatherDetail = await _weatherRepoImpl.getWeatherByCityName(cityName);
    notifyListeners();
  }

  static WeatherViewModel of(BuildContext context) =>
      ScopedModel.of<WeatherViewModel>(context);
}
