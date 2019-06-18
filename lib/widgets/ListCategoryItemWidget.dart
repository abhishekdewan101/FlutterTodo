import 'package:flutter/material.dart';
import 'package:todoapplication/utils/TodoColors.dart';

class ListCategoryItemWidget extends StatelessWidget {
  bool isTopItem;
  bool isBottomItem;
  IconData iconData;
  Color iconColor;
  String title;
  int reminderCount;

  ListCategoryItemWidget(
      {this.isTopItem,
      this.isBottomItem,
      this.iconData,
      this.iconColor,
      this.title,
      this.reminderCount});

  _getBorderRadius() {
    if (isTopItem) {
      return BorderRadius.only(
          topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0));
    } else if (isBottomItem) {
      return BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0));
    } else {
      return BorderRadius.zero;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
          borderRadius: _getBorderRadius(),
          color: TodoColors.searchBarBackgroundColor),
      height: 60,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              iconData,
              color: iconColor,
              size: 28,
            ),
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              reminderCount.toString(),
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
