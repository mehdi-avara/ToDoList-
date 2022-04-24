import 'package:flutter/material.dart';
import 'package:todolist/Models/Task.dart';
import 'package:todolist/widgets.dart';
class ToDoList extends StatefulWidget {
  const ToDoList({Key key}) : super(key: key);


  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {

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
              return TaskItem(
                task: tasks[index],
              );
            }),
      ),
    );
  }
}
