import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:todoapplication/utils/TodoColors.dart';

class AddTodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: TodoColors.backgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false, // Don't show the leading button
          title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back_ios, color: Colors.blueAccent),
                ),
                Text(
                  "Back",
                  style: TextStyle(color: Colors.blueAccent),
                ),
                Spacer(),
                Text(
                  "Done",
                  style: TextStyle(color: Colors.blueAccent),
                ),
                // Your widgets here
              ]),
          backgroundColor: TodoColors.backgroundColor,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30,20,30,0),
          child: new Column(
            children: <Widget>[
              Text(
                "Reminders",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}
