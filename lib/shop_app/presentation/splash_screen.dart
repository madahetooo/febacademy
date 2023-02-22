import 'dart:async';

import 'package:febacademy/shop_app/presentation/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreenTwo extends StatefulWidget {
  const SplashScreenTwo({Key? key}) : super(key: key);

  @override
  State<SplashScreenTwo> createState() => _SplashScreenTwoState();
}

class _SplashScreenTwoState extends State<SplashScreenTwo> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const WelcomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Spacer(flex: 2),
            Text(
              'Welcome To ABC App',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(flex: 1),
            Expanded(
              flex: 4,
              child: Image(image: AssetImage('assets/images/carrot.png')),
            ),
            Spacer(flex: 2),
            SpinKitWave(
              color: Colors.white,
              size: 50.0,
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
