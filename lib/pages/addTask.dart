import 'package:flutter/material.dart';

class addTask extends StatelessWidget {
  // const ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children:<Widget>[
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  labelText: 'Task Name',

                ),
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  labelText: 'Task Description',
                ),
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  labelText: 'Task Date',
                ),
              ),
          // TextButton(
          //     onPressed: () {
          //       DatePicker.showDatePicker(context,
          //           showTitleActions: true,
          //           minTime: DateTime(2018, 3, 5),
          //           maxTime: DateTime(2019, 6, 7), onChanged: (date) {
          //             print('change $date');
          //           }, onConfirm: (date) {
          //             print('confirm $date');
          //           }, currentTime: DateTime.now(), locale: LocaleType.en);
          //     },
          //     child: Text(
          //       'show date time picker',
          //       style: TextStyle(color: Colors.blue),
          //     ));
            ],
          ),
        ),
      ),
    );
  }
}
