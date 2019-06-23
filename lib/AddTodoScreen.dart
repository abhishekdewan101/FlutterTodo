import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:todoapplication/utils/TodoColors.dart';

class AddTodoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddTodoScreenState();
  }
}

class AddTodoScreenState extends State<AddTodoScreen> {
  List<Widget> inputList = new List();

  _buildListHeader() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,0, 0, 20),
      child: Text(
        "Reminders",
        style: TextStyle(
            color: Colors.blue, fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }

  _handleSubmitted(String text) {
    if (text.length > 0) {
      setState(() {
        inputList.add(_buildListInputWidget());
      });
    }
  }

  _buildListInputWidget() {
    return new Row(children: <Widget>[
      new Checkbox(
        value: true,
        onChanged: (bool value) {},
      ),
      new Flexible(
        child: TextField(
          onSubmitted: _handleSubmitted,
          style: new TextStyle(color: Colors.white, fontSize: 24),
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter a reminder',
              hintStyle: new TextStyle(color: Colors.white54)),
        ),
      ),
    ]);
  }

  AddTodoScreenState() {
    inputList.add(_buildListHeader());
    inputList.add(_buildListInputWidget());
  }

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
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: inputList),
        ));
  }
}
