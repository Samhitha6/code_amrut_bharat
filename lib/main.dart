import 'package:amrut_bharat/splash_screen/splash.dart';
import 'package:flutter/material.dart';

import 'navigation/navigation_const.dart';
import 'navigation/navigation_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: rSplash,
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
      title: 'Amrut Bharat',
      // theme: ThemeData(
      //   primarySwatch: Colors.w,
      // ),
      home: SplashScreen(),
    );
  }
}
