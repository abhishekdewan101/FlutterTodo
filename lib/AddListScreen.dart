import 'package:flutter/material.dart';
import 'package:todoapplication/utils/TodoColors.dart';

class AddListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TodoColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: TodoColors.searchBarBackgroundColor,
        title: Text("Add New List"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go Back'),
          onPressed: () {
            // Navigate to second route when tapped.
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
