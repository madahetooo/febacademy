import 'package:flutter/material.dart';

import '../domain/api_service.dart';
import '../model/todo_item.dart';
class TodoListScreenApi extends StatefulWidget {
  const TodoListScreenApi({Key? key}) : super(key: key);

  @override
  State<TodoListScreenApi> createState() => _TodoListScreenApiState();
}

class _TodoListScreenApiState extends State<TodoListScreenApi> {
  late Future<List<ToDoItem>> futureToDoList;
  @override
  void initState() {
    super.initState();
    futureToDoList = fetchToDoList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todolist Api Screen"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: FutureBuilder<List<ToDoItem>>(
          future: futureToDoList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(snapshot.data![index].title),
                      trailing: Checkbox(
                        value: snapshot.data![index].completed,
                        onChanged: (_) {},
                      ),
                    );
                  });
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            // By default show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.

    );
  }
}
