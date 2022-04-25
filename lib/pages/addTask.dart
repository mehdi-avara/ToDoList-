import 'package:flutter/material.dart';
import 'package:todolist/Models/Task.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
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
  DateTime dateOut = DateTime.now();
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
            TextButton(
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2000, 1, 1),
                      maxTime: DateTime(2019, 6, 7), onChanged: (date) {
                      dateOut = date;
                      }, onConfirm: (date) {
                        dateOut = date;
                      }, currentTime: DateTime.now(), locale: LocaleType.en);
                },
                child: Text(
                  'show date time picker',
                  style: TextStyle(color: Colors.blue),
                )),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 80,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    String title = titleC.text;
                    String description = descriptionC.text;
                    Task task = Task( title: title, description: description, isDone: false,date: dateOut);
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
