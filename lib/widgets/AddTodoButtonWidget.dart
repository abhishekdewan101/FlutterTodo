import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../AddTodoScreen.dart';

class AddTodoButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.redAccent.shade200,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddTodoScreen()));
          },
        ),
      ),
    );
  }
}
