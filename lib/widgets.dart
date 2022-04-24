import 'package:flutter/material.dart';
import 'package:todolist/Models/Task.dart';

class TaskItem extends StatelessWidget {
  // const TaskItem({Key key}) : super(key: key);
  final Task task;
  final String title;
  final String description;
  final bool isDone;
  // TaskItem({this.title, this.description, this.isDone});
  TaskItem({Task task}) : this.task=task, this.title = task.title, this.description = task.description, this.isDone = task.isDone;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Checkbox(
          value: isDone,
          onChanged: (bool value) {
            task.isDone = value;
          },
        ),
        title: Text(title),
        subtitle: Text(description),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            // task.deleteTask();
          },
        ),
      ),
    );
  }
}
