import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapplication/utils/TodoColors.dart';

class SearchBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new TextField(
      style: new TextStyle(color: TodoColors.searchBarTextColor),
      decoration: new InputDecoration(
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(25.0),
            borderSide: BorderSide.none
          ),
          fillColor: TodoColors.searchBarBackgroundColor,
          filled: true,
          hintText: 'Search',
          hintStyle: TextStyle(color: TodoColors.searchBarHintTextColor),
          prefixIcon: Icon(
            Icons.search,
            size: 22,
            color: TodoColors.searchBarHintTextColor,
          ),
          contentPadding: new EdgeInsets.symmetric(vertical: 10)),
    );
  }
}
