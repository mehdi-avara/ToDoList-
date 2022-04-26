import 'package:flutter/material.dart';
import 'package:todolist/Models/Task.dart';
import 'package:todolist/pages/TaskPage.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  final Function changeIsDone;
  final Function deleteTask;
  final String title;
  final String description;
  final bool isDone;
  // TaskItem({this.title, this.description, this.isDone});
  TaskItem({Task task, this.changeIsDone, this.deleteTask}) : this.task=task, this.title = task.title, this.description = task.description, this.isDone = task.isDone;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TaskPageView(
                task: task,
              ),
            ),
          );
        },
        leading: Checkbox(
          value: isDone,
          onChanged: (bool value) {
            changeIsDone();
          },
        ),
        title: Text(title.isEmpty ? 'No title' : title,
          style: TextStyle(
            color: task.date.isAfter(DateTime.now()) ? isDone ? Colors.grey : Colors.black : isDone ? Colors.grey : Colors.red,
          ),
        ),
        subtitle: Text(description,),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            deleteTask();
          },
        ),
      ),
    );
  }
}
