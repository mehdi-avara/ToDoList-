import 'package:flutter/material.dart';
import 'package:todolist/Models/Task.dart';

class addTask extends StatefulWidget {
  const addTask({Key key, this.AddTask }) : super(key: key);
  @override
  final Function AddTask;
  State<addTask> createState() => _addTaskState();
}

class _addTaskState extends State<addTask> {
  TextEditingController titleC;
  TextEditingController descriptionC;

  void initState() {
    titleC = TextEditingController();
    descriptionC = TextEditingController();
    super.initState();
  }

  void dispose() {
    titleC.dispose();
    descriptionC.dispose();
    super.dispose();
  }
  String title;

  String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children:<Widget>[
              TextField(
                controller: titleC,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  labelText: 'Task Name',

                ),
              ),
              TextField(
                controller: descriptionC,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  labelText: 'Task Description',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 80,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    String title = titleC.text;
                    String description = descriptionC.text;
                    Task task = Task( title: title, description: description, isDone: false,date: DateTime.now());
                    widget.AddTask(task);
                    titleC.clear();
                    descriptionC.clear();
                    Navigator.pop(context);

                  },
                  child: Text('Add'),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
