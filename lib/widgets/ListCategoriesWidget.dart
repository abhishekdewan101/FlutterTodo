import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapplication/widgets/ListCategoryItemWidget.dart';

import 'AddListButtonWidget.dart';

class ListCategoriesWidget extends StatelessWidget {
  _buildReminderListHeading() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: new Row(mainAxisAlignment: MainAxisAlignment.start, 
      children: [
        Text("My Lists", style: TextStyle(color: Colors.white, fontSize: 26)),
        Spacer(),
        AddListButtonWidget()
      ]),
    );
  }

  _buildReminderCategoryList() {
    var categoryList = List<Widget>();
    categoryList.add(_buildReminderListHeading());
    categoryList.add(ListCategoryItemWidget(
        isTopItem: true,
        isBottomItem: false,
        iconData: Icons.toc,
        iconColor: Colors.blueAccent,
        title: "Reminders",
        reminderCount: 8));
    categoryList.add(ListCategoryItemWidget(
        isTopItem: false,
        isBottomItem: false,
        iconData: Icons.shopping_cart,
        iconColor: Colors.yellowAccent,
        title: "Groceries",
        reminderCount: 2));
    categoryList.add(ListCategoryItemWidget(
        isTopItem: false,
        isBottomItem: false,
        iconData: Icons.inbox,
        iconColor: Colors.redAccent,
        title: "Work",
        reminderCount: 3));
    categoryList.add(ListCategoryItemWidget(
        isTopItem: false,
        isBottomItem: false,
        iconData: Icons.cake,
        iconColor: Colors.blue.shade300,
        title: "Party List",
        reminderCount: 4));
    categoryList.add(ListCategoryItemWidget(
        isTopItem: false,
        isBottomItem: false,
        iconData: Icons.directions_car,
        iconColor: Colors.greenAccent,
        title: "Camping Trip",
        reminderCount: 9));
    categoryList.add(ListCategoryItemWidget(
        isTopItem: false,
        isBottomItem: true,
        iconData: Icons.airplanemode_active,
        iconColor: Colors.pinkAccent,
        title: "Travel",
        reminderCount: 1));
    return categoryList;
  }

  @override
  Widget build(BuildContext context) {
    _buildReminderCategoryList();
    return new Column(children: _buildReminderCategoryList());
  }
}
