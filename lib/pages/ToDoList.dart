import 'package:flutter/material.dart';
import 'package:todolist/Models/Task.dart';
import 'package:todolist/widgets.dart';
class ToDoList extends StatefulWidget {
  const ToDoList({Key key}) : super(key: key);


  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {


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
                itemCount: Task.tasks.length,
                itemBuilder: (context, index) {
                  return TaskItem(
                    task: Task.tasks[index],
                  );
                }),
            Positioned(
              bottom: 24.0,
              right: 0.0,
              child: GestureDetector(
                onTap: () {

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
