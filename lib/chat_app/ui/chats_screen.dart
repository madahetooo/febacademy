import 'package:febacademy/chat_app/ui/widgets/chats_body.dart';
import 'package:flutter/material.dart';
class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: buildBottomNavigationBar(),
      floatingActionButton: buildFloatingActionButton(),
      body: ChatsBody(),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      title: Text("Your Friends List"),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search))
      ],
    );
  }
  BottomNavigationBar buildBottomNavigationBar(){
    return BottomNavigationBar(
      selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index){
        setState(() {
          _selectedIndex = index;
        });
        },
        items: [
      BottomNavigationBarItem(icon: Icon(Icons.messenger),label: "Chats"),
      BottomNavigationBarItem(icon: Icon(Icons.people),label: "People"),
      BottomNavigationBarItem(icon: Icon(Icons.call),label: "Calls"),
      BottomNavigationBarItem(icon: CircleAvatar(
        backgroundImage: AssetImage("assets/user_5.png"),
        radius: 15,
      ),label: "Profile"),
    ]);
  }
  FloatingActionButton buildFloatingActionButton(){
    return FloatingActionButton(onPressed: (){}
    ,
    child: Icon(Icons.person_add_alt_1),
    backgroundColor: Colors.green,);
  }
}
