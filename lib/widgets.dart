import 'package:flutter/material.dart';
import 'package:todolist/Models/Task.dart';

import 'pages/ToDoList.dart';

class TaskItem extends StatefulWidget {
  // const TaskItem({Key key}) : super(key: key);
  final Task task;
  final Function changeIsDone;
  final String title;
  final String description;
  final bool isDone;
  // TaskItem({this.title, this.description, this.isDone});
  TaskItem({Task task, this.changeIsDone}) : this.task=task, this.title = task.title, this.description = task.description, this.isDone = task.isDone;

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Checkbox(
          value: widget.isDone,
          onChanged: (bool value) {
            // changeIsDone();
          },
        ),
        title: Text(widget.title),
        subtitle: Text(widget.description),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            // print('delete');
          },
        ),
      ),
    );
  }
  // void deleteTask(int id) {
  //   // ToDoList.tasks.removeWhere((task) => task.id == id);
  // }


  }


