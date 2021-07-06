import 'package:amrut_bharat/home_screen/home_screen.dart';
import 'package:amrut_bharat/select_language/select_lang.dart';
import 'package:amrut_bharat/select_module/select_module.dart';
import 'package:amrut_bharat/splash_screen/splash.dart';
import 'package:flutter/material.dart';

import 'navigation_const.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case rSplash:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case rHome:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case rSelectLanguage:
        return MaterialPageRoute(builder: (context) => SelectLanguage());
      case rSelectModule:
        return MaterialPageRoute(builder: (context) => SelectModule());

      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('No routing found'),
                  ),
                ));
    }
  }
}
