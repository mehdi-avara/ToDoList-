import 'package:flutter/material.dart';
import 'package:todolist/Models/Task.dart';

class TaskPageView extends StatefulWidget {
  final Task task;
  final Function deleteTask;

  const TaskPageView({Key key, this.task, this.deleteTask}) : super(key: key);

  @override
  State<TaskPageView> createState() => _TaskPageViewState();
}

class _TaskPageViewState extends State<TaskPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextFormField(
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
              title: TextFormField(
                    initialValue: widget.task.description,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        widget.task.description = value;
                      });
                    },
              ),
              subtitle: Text(
                    "due to " + widget.task.date.toString().substring(0, 16),
              ),
            ),
          ),
        ]),
                    Positioned(
                      top: MediaQuery. of(context). size. height/2,
                      left: MediaQuery. of(context). size. width/2,
                      child: GestureDetector(
                        onTap: () {
                          widget.deleteTask(widget.task);
                        },
                        child: Container(
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
                              },
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ))));
  }
}
