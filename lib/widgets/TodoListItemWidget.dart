import 'package:flutter/material.dart';
import 'package:todoapplication/interfaces/TodoCompleteListener.dart';

class TodoListItemWidget extends StatefulWidget {
  bool hasTodoBeenCompleted;
  TodoCompleteListener listener;

  TodoListItemWidget({this.hasTodoBeenCompleted, this.listener});

  @override
  State<StatefulWidget> createState() {
    return TodoListItemState(
        hasTodoBeenCompleted: hasTodoBeenCompleted, listener: listener);
  }
}

class TodoListItemState extends State {
  bool hasTodoBeenCompleted;
  TodoCompleteListener listener;

  TodoListItemState({this.hasTodoBeenCompleted, this.listener});

  _handleSubmitted(String text) {
    if (text.length > 0) {
      listener.addNewTodo();
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Row(children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
        child: InkWell(
          onTap: () => {
                setState(() {
                  hasTodoBeenCompleted = !hasTodoBeenCompleted;
                })
              },
          child: new Container(
              width: 18.0,
              height: 18.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      hasTodoBeenCompleted ? Colors.blue : Colors.transparent,
                  border: !hasTodoBeenCompleted
                      ? Border.all(color: Colors.grey, width: 2.0)
                      : Border.all(color: Colors.transparent, width: 0.0)),
              child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: hasTodoBeenCompleted
                      ? Icon(Icons.check, size: 9.0, color: Colors.white)
                      : null)),
        ),
      ),
      new Flexible(
        child: TextField(
          onSubmitted: _handleSubmitted,
          style: hasTodoBeenCompleted ? TextStyle(color: Colors.white, fontSize: 24, decoration: TextDecoration.lineThrough) : TextStyle(color: Colors.white, fontSize: 24),
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter a reminder',
              hintStyle: new TextStyle(color: Colors.white54)),
        ),
      ),
    ]);
    ;
  }
}
