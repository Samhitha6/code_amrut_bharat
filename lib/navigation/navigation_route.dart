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
        List<String> languageNmodule = settings.arguments as List<String>;
        return MaterialPageRoute(
            builder: (context) => HomeScreen(
                languageSelected: languageNmodule[0],
                moduleSelected: languageNmodule[1]));
      case rSelectLanguage:
        return MaterialPageRoute(builder: (context) => SelectLanguage());
      case rSelectModule:
        String languageSelected = settings.arguments as String;
        return MaterialPageRoute(
            builder: (context) =>
                SelectModule(languageSelected: languageSelected));

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
