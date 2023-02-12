import 'package:febacademy/auth_system/login_screen.dart';
import 'package:febacademy/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    initialRoute: '/splashScreen',
    debugShowCheckedModeBanner: false,
    routes: {
      '/loginScreen':(context) => LoginScreen(),
      '/splashScreen':(context) => SplashScreen(),
    },
  ));
}

