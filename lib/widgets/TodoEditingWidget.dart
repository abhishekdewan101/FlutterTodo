import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoEditingWidget extends StatefulWidget {
  Color headerColor;
  String headerTitle;

  TodoEditingWidget({this.headerColor, this.headerTitle});

  @override
  State<StatefulWidget> createState() {
    return new TodoEditingState(headerColor: headerColor, headerTitle: headerTitle);
  }
}

class TodoEditingState extends State {
  List<Widget> inputList = new List();
  Color headerColor;
  String headerTitle;

  TodoEditingState({this.headerColor, this.headerTitle}){
    inputList.add(_buildListHeader());
    inputList.add(_buildListInputWidget());
  }

  _buildListHeader() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,0, 0, 20),
      child: Text(
        headerTitle,
        style: TextStyle(
            color: headerColor, fontSize: 28, fontWeight: FontWeight.bold),
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

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: inputList),
        );
  }
}