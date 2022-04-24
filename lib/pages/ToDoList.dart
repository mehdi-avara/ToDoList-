import 'package:flutter/material.dart';
import 'package:todolist/Models/Task.dart';

class ToDoList extends StatelessWidget {
  // const ToDoList({Key key}) : super(key: key);
  List<Task> tasks = [
    Task(
      title: 'Task 1',
      description: 'Description 1',
      date: DateTime.now().toString(),
      isDone: false,
    ),
    Task(
      title: 'Task 2',
      description: 'Description 2',
      date: DateTime.now().toString(),
      isDone: false,
    ),
    Task(
      title: 'Task 3',
      description: 'Description 3',
      date: DateTime.now().toString(),
      isDone: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDoList'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(tasks[index].title),
                subtitle: Text(tasks[index].description),
                trailing: Icon(Icons.arrow_forward_ios),
              );
            }),
      ),
    );
  }
}
