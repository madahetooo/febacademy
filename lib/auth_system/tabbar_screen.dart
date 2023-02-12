import 'package:febacademy/auth_system/login_screen.dart';
import 'package:febacademy/auth_system/registration_screen.dart';
import 'package:flutter/material.dart';
class TabbarScreen extends StatelessWidget {
  const TabbarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
      length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('FebAcademy App'),
            actions: const [
              Icon(Icons.settings)
            ],
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.login),
                  text: "Sign In",
                ),
                Tab(
                  icon: Icon(Icons.app_registration),
                  text: "Sign Up",
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              LoginScreen(),
              RegistrationScreen(),
            ],
          ),

        ),
    ));
  }
}
