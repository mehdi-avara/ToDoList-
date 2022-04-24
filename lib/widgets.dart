import 'package:flutter/material.dart';
import 'package:todolist/Models/Task.dart';

class TaskItem extends StatelessWidget {
  // const TaskItem({Key key}) : super(key: key);
    final String title;
    final String description;
    final bool isDone;
    // TaskItem({this.title, this.description, this.isDone});
    TaskItem({Task task}) : this.title = task.title, this.description = task.description, this.isDone = task.isDone;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
