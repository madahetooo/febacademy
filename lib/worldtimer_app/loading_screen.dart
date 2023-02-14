import 'package:febacademy/worldtimer_app/service/worldtime_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {


  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Cairo', flag: 'egypt.png', url: 'Africa/Cairo');
    await instance.getTime();
    Navigator.pushNamed(context, '/home_location', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }

  @override
  void initState(){
    super.initState();
    setupWorldTime();
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SpinKitPumpingHeart(
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}
