import 'package:febacademy/basic_widgets/basic_widget_screen.dart';
import 'package:febacademy/bmi_calculator/bmi_calculator.dart';
import 'package:febacademy/todolist/todolist.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Eslam Medhat",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                accountEmail: Text("ieslammedhat@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://user-images.githubusercontent.com/28203059/159008453-1fb9a75a-7503-41ae-9fe2-b70d8bdccc57.png'),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-goog/events/Chatbot%20SME.jpg'),
                  ),
                ],
              ),
              ListTile(
                title: Text('Primary'),
                leading: Icon(Icons.inbox),
              ),
              ListTile(
                title: Text('Social'),
                leading: Icon(Icons.people),
              ),
              ListTile(
                title: Text('Promotions'),
                leading: Icon(Icons.ads_click_sharp),
              ),
              Divider(
                thickness: 1,
              ),
              ListTile(
                title: Text('Starred'),
                leading: Icon(Icons.star),
              ),
              ListTile(
                title: Text('Important'),
                leading: Icon(Icons.label_important),
              ),
              ListTile(
                title: Text('Sent'),
                leading: Icon(Icons.send),
              ),
              ListTile(
                title: Text('Outbox'),
                leading: Icon(Icons.outbox),
              ),
              ListTile(
                title: Text('Draft'),
                leading: Icon(Icons.drafts),
              ),
              ListTile(
                title: Text('All Mail'),
                leading: Icon(Icons.mail),
              ),
              Divider(
                thickness: 1,
              ),
              ListTile(
                title: Text('Logout'),
                leading: Icon(Icons.logout),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BasicWidgetScreen()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 4),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green,
                          offset: Offset(6.0,6.0)
                        )
                      ]
                    ),
                    child: Center(
                      child: Text(
                        "Basic Widget App",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BMICalculator()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 4),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.green,
                              offset: Offset(6.0,6.0)
                          )
                        ]
                    ),
                    child: Center(
                      child: Text(
                        "BMI Calculator",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TodoList()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 4),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.green,
                              offset: Offset(6.0,6.0)
                          )
                        ]
                    ),
                    child: Center(
                      child: Text(
                        "Todolist App",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BasicWidgetScreen()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 4),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.green,
                              offset: Offset(6.0,6.0)
                          )
                        ]
                    ),
                    child: Center(
                      child: Text(
                        "WorldTime App",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BasicWidgetScreen()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 4),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.green,
                              offset: Offset(6.0,6.0)
                          )
                        ]
                    ),
                    child: Center(
                      child: Text(
                        "Firebase Chat App",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BasicWidgetScreen()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 4),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.green,
                              offset: Offset(6.0,6.0)
                          )
                        ]
                    ),
                    child: Center(
                      child: Text(
                        "Unit Test App",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
