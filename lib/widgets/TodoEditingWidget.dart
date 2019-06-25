import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapplication/interfaces/TodoCompleteListener.dart';
import 'package:todoapplication/widgets/TodoListItemWidget.dart';

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

class TodoEditingState extends State implements TodoCompleteListener {
  List<Widget> inputList = new List();
  Color headerColor;
  String headerTitle;
  bool todoCompleted = false;
  bool initialized = false;

  TodoEditingState({this.headerColor, this.headerTitle}) {
    inputList.add(_buildListHeader());
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

  _buildListInputWidget() {
    return TodoListItemWidget(hasTodoBeenCompleted: false, listener: this,);
  }

  @override
  Widget build(BuildContext context) {
    if (!initialized) {
      inputList.add(_buildListInputWidget());
      initialized = true;
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
      child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: inputList),
    );
  }

  @override
  void addNewTodo() {
    setState(() {
        inputList.add(_buildListInputWidget());
      });
  }
}
