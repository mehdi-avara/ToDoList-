import 'package:flutter/material.dart';
class Task  {
  final int id = Task.counter++;
  String title;
  String description;
  DateTime date;
  bool isDone;
  static int counter = 0;

  // Task({Key key}) : super(key: key);
  Task({this.title, this.description, this.date, this.isDone});
  void setTitle(String title){
    this.title = title;
  }

  int getId(){
    return this.id;
  }

  void setDescription(String description){
    this.description = description;
  }

  void setDate(DateTime date){
    this.date = date;
  }

  void setIsDone(bool isDone){
    this.isDone = isDone;
  }

  String getTitle(){
    return this.title;
  }

  String getDescription(){
    return this.description;
  }

  DateTime getDate(){
    return this.date;
  }

  bool getIsDone(){
    return this.isDone;
  }

  equals(Task task
      ){
    return this.id == task.id;
  }

}
