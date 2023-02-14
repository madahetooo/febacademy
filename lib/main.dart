import 'package:febacademy/auth_system/login_screen.dart';
import 'package:febacademy/splash_screen.dart';
import 'package:febacademy/worldtimer_app/choose_location_screen.dart';
import 'package:febacademy/worldtimer_app/home_location_screen.dart';
import 'package:febacademy/worldtimer_app/loading_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    initialRoute: '/splashScreen',
    debugShowCheckedModeBanner: false,
    routes: {
      '/loginScreen':(context) => LoginScreen(),
      '/splashScreen':(context) => SplashScreen(),
      '/choose_location':(context) => ChooseLocationScreen(),
      '/home_location':(context) => HomeLocationScreen(),
      '/loading_screen':(context) => LoadingScreen(),
    },
  ));
}

