import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapplication/AddListScreen.dart';
import 'package:todoapplication/utils/TodoColors.dart';

class AddListButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: new Row(
        children: <Widget>[
          new FlatButton(
            child: new Text("Add List",
                style: TextStyle(color: Colors.blue, fontSize: 18)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddListScreen()));
            },
            splashColor: TodoColors.searchBarBackgroundColor,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.end,
      ),
    );
  }
}
