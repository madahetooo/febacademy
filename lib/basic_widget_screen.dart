import 'package:febacademy/grid_view_screen.dart';
import 'package:febacademy/listview_screen.dart';
import 'package:febacademy/toast_screen.dart';
import 'package:flutter/material.dart';
class BasicWidgetScreen extends StatefulWidget {
  const BasicWidgetScreen({Key? key}) : super(key: key);

  @override
  State<BasicWidgetScreen> createState() => _BasicWidgetScreenState();
}

class _BasicWidgetScreenState extends State<BasicWidgetScreen> {
 int selectedIndex = 0;


  final _listOfWidgetScreens =[
    GridViewScreen(),
    ListViewScreen(),
    ToastScreen()
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _listOfWidgetScreens[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        iconSize: 25,
        elevation: 5,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.grid_3x3),
          label: 'Grid View'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List View'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.touch_app_sharp),
            label: 'Toast'
        ),
      ],

      ),
    );
  }


  void onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }
}
