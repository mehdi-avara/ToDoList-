import 'package:flutter/material.dart';
import 'package:todolist/Models/Task.dart';
import 'package:todolist/pages/TaskPage.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  final Function changeIsDone;
  final Function deleteTask;
  final Function updateTask;
  final String title;
  final String description;
  final bool isDone;
  // TaskItem({this.title, this.description, this.isDone});
  TaskItem({Task task, this.changeIsDone, this.deleteTask, this.updateTask}) : this.task=task, this.title = task.title, this.description = task.description, this.isDone = task.isDone;
  
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
                  deleteTask: () => deleteTask(),
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
        subtitle: Column(
          children: [
            Row(
              children: [
                Text(description),
              ],
            ),
            Row(
              children: [
                Text("due to "+task.date.toString().substring(0,16),
                  style: TextStyle(
                    fontSize: 8,
                  ),
                ),
              ],
            ),
          ],
        ),
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
