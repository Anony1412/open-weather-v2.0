import 'package:flutter/material.dart';
import 'package:open_weather_v2/src/resources/strings.dart';
import 'package:open_weather_v2/src/ui/screens/detail/detail_screen.dart';
import 'package:open_weather_v2/src/ui/screens/home/home_screen.dart';
import 'package:open_weather_v2/src/ui/screens/splash/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _routes = <String, WidgetBuilder>{
    Strings.splashScreenTag: (context) => SplashScreen(),
    Strings.homeScreenTag: (context) => HomeScreen(),
    Strings.detailScreenTag: (context) => DetailScreen(),
  };

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          fontFamily: Strings.defaultFontFamily,
        ),
        home: SplashScreen(),
        routes: _routes,
      );
}
