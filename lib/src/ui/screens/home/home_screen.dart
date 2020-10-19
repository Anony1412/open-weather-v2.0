import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_weather_v2/src/resources/Images.dart';
import 'package:open_weather_v2/src/resources/dimens.dart';
import 'package:open_weather_v2/src/resources/strings.dart';
import 'package:open_weather_v2/src/ui/screens/home/widgets/weather_item.dart';
import 'package:open_weather_v2/src/utils/appbar_builder.dart';

class HomeScreen extends StatelessWidget {
  final _gradientColors = [Colors.lightBlueAccent, Colors.blueAccent];

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    final _textCityName = Container(
      height: deviceSize.height / 10,
      child: Center(
        child: Text(
          "Hanoi, Vietnam",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 40.0,
          ),
        ),
      ),
    );

    final _boxWeatherTodayDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(Dimens.defaultRadiusBoxContent),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: _gradientColors,
      ),
    );

    final _boxWeatherTodayContent = Padding(
      padding: EdgeInsets.all(Dimens.mediumPaddingBoxContent),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Images.iconLogo),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Dimens.smallMarginContentWidth),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Center(
                      child: Text(
                        "25°",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 80,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: Dimens.smallMarginContentHeight),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "Clouds",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Dimens.smallMarginContentWidth),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "Feel like: 20°",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    final _boxWeatherToday = Expanded(
      child: InkWell(
        onTap: () => _navigateToDetailScreen(context),
        child: Container(
          decoration: _boxWeatherTodayDecoration,
          child: _boxWeatherTodayContent,
        ),
      ),
    );

    final _textOnWeek = Align(
      alignment: Alignment.centerLeft,
      child: Text(
        Strings.textOnWeekTitle,
        style: TextStyle(
          color: Colors.lightBlue,
          fontWeight: FontWeight.bold,
          fontSize: 32,
        ),
      ),
    );

    final _listItemWeather = Expanded(
      child: Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return WeatherItem("Monday", "25°", "rain");
            },
        ),
      ),
    );

    final _listWeatherOnWeek = Container(
      height: deviceSize.height / 3,
      padding: EdgeInsets.all(Dimens.mediumPaddingBoxContent),
      child: Column(
        children: [
          _textOnWeek,
          SizedBox(height: Dimens.smallMarginContentHeight),
          _listItemWeather,
        ],
      ),
    );

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.defaultPaddingScreenHorizontal,
          vertical: Dimens.defaultPaddingScreenVertical,
        ),
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _textCityName,
            SizedBox(height: Dimens.defaultMarginContentHeight),
            _boxWeatherToday,
            SizedBox(height: Dimens.defaultMarginContentHeight),
            _listWeatherOnWeek
          ],
        ),
      ),
    );
  }

  _navigateToDetailScreen(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(Strings.detailScreenTag);
  }
}
