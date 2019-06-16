import 'package:flutter/material.dart';
import 'package:todoapplication/utils/TodoColors.dart';

import 'CategorySelectButtonWidget.dart';

class CategoryGridWidget extends StatelessWidget {

  int categoryHeight = 75;
  int categoryWidth = 140;
  int categoryPadding = 20;
  int horizontalChildCount = 2;
  int verticalChildCount = 4;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: ((categoryHeight * verticalChildCount) + (categoryPadding * verticalChildCount - 1)).toDouble() ,
            child: new GridView.count(
              crossAxisCount: horizontalChildCount,
              childAspectRatio: (categoryWidth/ categoryHeight),
              mainAxisSpacing: categoryPadding.toDouble(),
              crossAxisSpacing: categoryPadding.toDouble(),
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                CategorySelectButtonWidget(
                  categoryIcon: Icons.calendar_today,
                  iconColor: Colors.blue,
                  categoryName: "Today",
                  cateogryCount: 8,
                ),
                CategorySelectButtonWidget(
                  categoryIcon: Icons.alarm,
                  iconColor: Colors.yellow,
                  categoryName: "Scheduled",
                  cateogryCount: 2
                ),
                CategorySelectButtonWidget(
                  categoryIcon: Icons.inbox,
                  iconColor: Colors.white,
                  categoryName: "All",
                  cateogryCount: 20
                ),
                CategorySelectButtonWidget(
                  categoryIcon: Icons.flag,
                  iconColor: Colors.redAccent,
                  categoryName: "Flagged",
                  cateogryCount: 2
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
