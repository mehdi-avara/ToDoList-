import 'package:flutter/material.dart';

class Task extends StatefulWidget {

  final int id = Task.counter++;
  String title;
  String description;
  DateTime date;
  bool isDone;
  static int counter = 0;
  Task({this.title, this.description, this.date, this.isDone});


  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {



  void setTitle(String title){
    this.widget.title = title;
  }

  int getId(){
    return this.widget.id;
  }

  void setDescription(String description){
    this.widget.description = description;
  }

  void setDate(DateTime date){
    this.widget.date = date;
  }

  void setIsDone(bool isDone){
    this.widget.isDone = isDone;
  }

  String getTitle(){
    return this.widget.title;
  }

  String getDescription(){
    return this.widget.description;
  }

  DateTime getDate(){
    return this.widget.date;
  }

  bool getIsDone(){
    return this.widget.isDone;
  }

  equals(Task task){
    return this.widget.id == task.id;
  }

  // void deleteTask(){
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}