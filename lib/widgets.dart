import 'package:flutter/material.dart';
import 'package:todolist/Models/Task.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  final Function changeIsDone;
  final String title;
  final String description;
  final bool isDone;
  // TaskItem({this.title, this.description, this.isDone});
  TaskItem({Task task, this.changeIsDone}) : this.task=task, this.title = task.title, this.description = task.description, this.isDone = task.isDone;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Checkbox(
          value: isDone,
          onChanged: (bool value) {
            changeIsDone();
          },
        ),
        title: Text(title),
        subtitle: Text(description),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            print('delete');
            // Task.deleteTask(task.getId());
          },
        ),
      ),
    );
  }
}
