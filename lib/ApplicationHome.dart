import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapplication/AddTodoScreen.dart';
import 'package:todoapplication/widgets/AddTodoButtonWidget.dart';
import 'package:todoapplication/widgets/CategoryGridWidget.dart';
import 'package:todoapplication/widgets/ListCategoriesWidget.dart';
import 'package:todoapplication/widgets/SearchBarWidget.dart';

class ApplicationHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Padding(
        padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: new ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new SearchBarWidget(),
                new CategoryGridWidget(),
                new ListCategoriesWidget(),
                new AddTodoButtonWidget()
              ],
            ),
          ],
        ));
  }
}

