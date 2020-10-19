import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_weather_v2/src/resources/Images.dart';
import 'package:open_weather_v2/src/resources/dimens.dart';
import 'package:open_weather_v2/src/resources/strings.dart';

class WeatherItem extends StatelessWidget {
  final String name, temperature, weatherState;

  WeatherItem(this.name, this.temperature, this.weatherState);

  @override
  Widget build(BuildContext context) {
    final _textDayName = Text(
      name,
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w300, fontSize: 24),
    );

    final _iconWeatherState = Expanded(
      child: Image.asset(Images.iconLogo),
    );

    final _textTemperature = Text(
      temperature,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
    );

    return InkWell(
      onTap: () => _itemWeatherClicked(context),
      child: Container(
        margin: EdgeInsets.all(Dimens.smallMarginContent),
        padding: EdgeInsets.all(Dimens.smallPaddingContent),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(Dimens.defaultRadiusBoxContent),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _textDayName,
              _iconWeatherState,
              _textTemperature,
            ],
          ),
        ),
      ),
    );
  }

  _itemWeatherClicked(BuildContext context) {
    _navigateToDetailScreen(context);
  }

  void _navigateToDetailScreen(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(Strings.detailScreenTag);
  }
}
