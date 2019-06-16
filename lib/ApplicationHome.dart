import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapplication/utils/TodoColors.dart';
import 'package:todoapplication/widgets/CategoryGridWidget.dart';
import 'package:todoapplication/widgets/SearchBarWidget.dart';

class ApplicationHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Padding(
        padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
        child: new ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new SearchBarWidget(),
                new CategoryGridWidget()
              ],
            ),
          ],
        ));
  }
}
