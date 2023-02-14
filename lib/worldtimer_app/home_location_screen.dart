import 'package:febacademy/worldtimer_app/choose_location_screen.dart';
import 'package:flutter/material.dart';

class HomeLocationScreen extends StatefulWidget {
  const HomeLocationScreen({Key? key}) : super(key: key);

  @override
  State<HomeLocationScreen> createState() => _HomeLocationScreenState();
}

class _HomeLocationScreenState extends State<HomeLocationScreen> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)?.settings.arguments as Map;
    print(data);
    String backgroundImage = data['isDayTime'] ? 'day.png' : 'night.png';
    Color backgroundColor = data['isDayTime'] ? Colors.blue : Colors.indigo;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration:  BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/$backgroundImage'),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: [
                ElevatedButton.icon(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {
                    Navigator.of(context,rootNavigator: true).pushNamed("/choose_location");
                  },
                  icon: const Icon(
                    Icons.location_on,
                    color: Colors.black,
                  ),
                  label: const Text(
                    "Edit Locaiton",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  data['location'],
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  data['time'],
                  style: TextStyle(
                      fontSize: 66,
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
