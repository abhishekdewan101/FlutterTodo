import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapplication/utils/TodoColors.dart';

class CategorySelectButtonWidget extends StatelessWidget {
  
  IconData categoryIcon;
  Color iconColor;
  String categoryName;
  int cateogryCount;

  CategorySelectButtonWidget({this.categoryIcon, this.iconColor, this.categoryName, this.cateogryCount});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: TodoColors.searchBarBackgroundColor),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    categoryIcon,
                    color: iconColor,
                    size: 28,
                  ),
                  Text(
                    cateogryCount.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    categoryName,
                    style: TextStyle(color: TodoColors.searchBarHintTextColor, fontSize: 18),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
