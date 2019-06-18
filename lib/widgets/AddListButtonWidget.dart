import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddListButtonWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: new Row(
        children: <Widget>[
          new Text("Add List",
              style: TextStyle(color: Colors.blue, fontSize: 18))
        ],
        mainAxisAlignment: MainAxisAlignment.end,
      ),
    );
  }
}