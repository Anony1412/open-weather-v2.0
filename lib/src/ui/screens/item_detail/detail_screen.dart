import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_weather_v2/src/resources/Images.dart';
import 'package:open_weather_v2/src/resources/colors.dart';
import 'package:open_weather_v2/src/ui/screens/item_detail/widgets/detail_header.dart';

class DetailScreen extends StatelessWidget {
  final _gradientColors = [
    PalletColors.deepPurple100,
    PalletColors.deepPurple300
  ];

  @override
  Widget build(BuildContext context) {
    final _deviceSize = MediaQuery.of(context).size;

    final _textTemperature = Expanded(
      child: Center(
        child: Text(
          "25°",
          style: TextStyle(
              color: Colors.white, fontSize: 80, fontWeight: FontWeight.bold),
        ),
      ),
    );

    final _iconWeatherState = Expanded(
      child: Center(
        child: Image.asset(Images.iconLogo),
      ),
    );

    final _weatherSummary = Expanded(
      child: Container(
        child: Row(
          children: [
            _textTemperature,
            SizedBox(width: 8),
            _iconWeatherState,
          ],
        ),
      ),
    );

    _buildRow(String titleKey, String titleValue) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titleKey,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            titleValue,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      );
    }

    final _weatherDetail = Expanded(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Stack(
          children: [
            Column(
              children: [
                _buildRow("main", "value"),
                _buildRow("description", "value"),
                _buildRow("temp_min", "value"),
                _buildRow("temp_max", "value"),
                _buildRow("humidity", "value"),
                _buildRow("wind_speed", "value"),
                _buildRow("sunrise", "value"),
                _buildRow("sunset", "value"),
              ],
            )
          ],
        ),
      ),
    );

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: _deviceSize.width,
          padding: EdgeInsets.only(left: 8, top: 32, right: 8, bottom: 16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: _gradientColors,
            ),
          ),
          child: Column(
            children: [
              DetailHeader(),
              SizedBox(height: 8),
              _weatherSummary,
              SizedBox(height: 8),
              _weatherDetail,
            ],
          ),
        ),
      ),
    );
  }
}
