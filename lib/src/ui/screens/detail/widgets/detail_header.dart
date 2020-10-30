import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_weather_v2/src/resources/strings.dart';

class DetailHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _buttonBack = InkWell(
      child: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onTap: () => navigateToHomeScreen(context),
    );

    final _textCityName = Center(
      child: Text(
        "city name",
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
        ),
      ),
    );

    final _buttonAction = InkWell(
      child: Icon(
        Icons.more_vert,
        color: Colors.white,
      ),
      onTap: showPopUp,
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buttonBack,
          _textCityName,
          _buttonAction,
        ],
      ),
    );
  }

  navigateToHomeScreen(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(Strings.homeScreenTag);
  }

  void showPopUp() {}
}
