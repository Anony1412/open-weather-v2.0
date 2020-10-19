import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_weather_v2/src/resources/Images.dart';
import 'package:open_weather_v2/src/resources/dimens.dart';
import 'package:open_weather_v2/src/resources/strings.dart';
import 'package:open_weather_v2/src/utils/appbar_builder.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    final _iconLogo = Container(
      // color: Colors.red,
      width: deviceSize.width / 2,
      height: deviceSize.height / 2,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(Images.iconLogo))),
    );

    _navigateToHomeScreen(BuildContext context) {
      Navigator.of(context).pushReplacementNamed(Strings.homeScreenTag);
    }

    final _buttonExplore = Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.horizontalPaddingButton,
        vertical: Dimens.verticalPaddingButton,
      ),
      child: RaisedButton(
        onPressed: () => _navigateToHomeScreen(context),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.defaultRadiusButton),
        ),
        color: Colors.red,
        child: Text(
          Strings.buttonExploreTitle,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: Dimens.defaultPaddingScreen),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Images.image_background),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: Colors.transparent,
                child: Center(
                  child: _iconLogo,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: _buttonExplore,
            ),
          ],
        ),
      ),
    );
  }
}
