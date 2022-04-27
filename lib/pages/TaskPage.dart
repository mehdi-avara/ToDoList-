import 'package:flutter/material.dart';
import 'package:todolist/Models/Task.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
class TaskPageView extends StatefulWidget {
  final Task task;
  final Function deleteTask;


  TaskPageView({Key key, this.task, this.deleteTask}) : super(key: key);

  @override
  State<TaskPageView> createState() => _TaskPageViewState();
}

class _TaskPageViewState extends State<TaskPageView> {
  DateTime dateOut = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextFormField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            initialValue: widget.task.title,
            onChanged: (value) {
              setState(() {
                widget.task.title = value;
              });
            },
          ),
        ),
        body: SafeArea(
            child: Container(
                child: Stack(
                  children: [
                    Column(children: <Widget>[
          Container(
            child: ListTile(
              title: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                        initialValue: widget.task.description,
                        onChanged: (value) {
                          setState(() {
                            widget.task.description = value;
                          });
                        },
                  ),
                  Text(
                    "due to " + widget.task.date.toString().substring(0, 16),
                  )
                ],
              ),
              trailing: Container(
                width: 70.0,
                height: 70.0,
                child: IconButton(
                  iconSize: 40.0,
                  icon: Checkbox(
                    splashRadius: 20.0,
                    value: widget.task.isDone,
                    onChanged: (bool value) {
                      setState(() {
                        widget.task.isDone = value;
                      });
                      // widget.updateTask();
                    },
                  ),
                ),
              ),

            ),
          ),
        ]),
                  ],
                )
            )
        )
    );
  }
}
