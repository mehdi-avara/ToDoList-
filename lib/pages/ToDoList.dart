import 'package:flutter/material.dart';
import 'package:todolist/Models/Task.dart';
import 'package:todolist/pages/addTask.dart';
import 'package:todolist/widgets.dart';
class ToDoList extends StatefulWidget {
  const ToDoList({Key key}) : super(key: key);



  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {

  void AddTask(Task task){
    setState(() {
      tasks.add(task);
    });
  }

  void changeIsDone(int index){
    setState(() {
      tasks[index].isDone = !tasks[index].isDone;
    });
  }
  void deleteTask(int index){
    setState(() {
      tasks.removeAt(index);
    });
  }

  List<Task> tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDoList'),
      ),
      body: Container(
        child: Stack(
          children: [
            ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return TaskItem(
                    task: tasks[index],changeIsDone: () => changeIsDone(index),deleteTask: () => deleteTask(index),
                  );
                }),
            Positioned(
              bottom: 24.0,
              right: 0.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => addTask(
                      AddTask: AddTask,
                    )),
                  );
                },
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(

                      colors: [
                        Colors.blue,
                        Colors.yellow,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 32.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
