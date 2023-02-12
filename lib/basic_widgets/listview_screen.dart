import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListVew Page"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_bike),
              title: Text("Bike"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_bike),
              title: Text("Bike"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_bike),
              title: Text("Bike"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_bike),
              title: Text("Bike"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_bike),
              title: Text("Bike"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_bike),
              title: Text("Bike"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_bike),
              title: Text("Bike"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_bike),
              title: Text("Bike"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_bike),
              title: Text("Bike"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_bike),
              title: Text("Bike"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_bike),
              title: Text("Bike"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_bike),
              title: Text("Bike"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_bike),
              title: Text("Bike"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_bike),
              title: Text("Bike"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
