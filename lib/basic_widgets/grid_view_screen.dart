import 'package:flutter/material.dart';
class GridViewScreen extends StatefulWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {



  List<String> images = [
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Grid View Images"),
    ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: GridView.builder(
          itemCount: images.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemBuilder: (BuildContext context, int index){
            return Image.network(images[index]);
            }),
      ),
    );
  }
}
