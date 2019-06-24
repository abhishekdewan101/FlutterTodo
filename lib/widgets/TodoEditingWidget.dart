import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoEditingWidget extends StatefulWidget {
  Color headerColor;
  String headerTitle;

  TodoEditingWidget({this.headerColor, this.headerTitle});

  @override
  State<StatefulWidget> createState() {
    return new TodoEditingState(
        headerColor: headerColor, headerTitle: headerTitle);
  }
}

class TodoEditingState extends State {
  List<Widget> inputList = new List();
  Color headerColor;
  String headerTitle;
  bool todoCompleted = false;
  bool initialized = false;

  TodoEditingState({this.headerColor, this.headerTitle}) {
    inputList.add(_buildListHeader());
    inputList.add(_buildListInputWidget());
  }

  _buildListHeader() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
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
      Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
        child: InkWell(
          onTap: () => {
                setState(() {
                  todoCompleted = !todoCompleted;
                })
              },
          child: new Container(
              width: 18.0,
              height: 18.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: todoCompleted ? Colors.blue : Colors.transparent,
                  border: !todoCompleted
                      ? Border.all(color: Colors.grey, width: 2.0)
                      : Border.all(color: Colors.transparent, width: 0.0)),
              child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: todoCompleted
                      ? Icon(Icons.check, size: 9.0, color: Colors.white)
                      : null)),
        ),
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
          crossAxisAlignment: CrossAxisAlignment.start, children: inputList),
    );
  }
}
