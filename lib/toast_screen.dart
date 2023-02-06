import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class ToastScreen extends StatefulWidget {
  const ToastScreen({Key? key}) : super(key: key);

  @override
  State<ToastScreen> createState() => _ToastScreenState();
}

class _ToastScreenState extends State<ToastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Toast Page"),
    ),
      body: Center(
        child: MaterialButton(
          onPressed: showToast,
          color: Colors.red,
          child: Text("Show Toast Example",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0
          ),),
        ),
      ),
    );
  }
  
  void showToast(){
    Fluttertoast.showToast(msg: "Show Toast Message on Flutter",
    toastLength: Toast.LENGTH_LONG,
      timeInSecForIosWeb: 5,
      fontSize: 12.0,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.grey,
      textColor: Colors.white
    );
  }
  
}
