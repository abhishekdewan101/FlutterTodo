import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapplication/model/EditingPageModel.dart';
import 'package:todoapplication/widgets/TodoEditingWidget.dart';

class EditingPagingWidget extends StatelessWidget {
  
  List<EditingPageModel> editingPageList = new List();

  EditingPagingWidget() {
    editingPageList.add(new EditingPageModel(headerColor: Colors.blue, headerTitle: "Reminders"));
    editingPageList.add(new EditingPageModel(headerColor: Colors.green, headerTitle: "Camping Trip"));
    editingPageList.add(new EditingPageModel(headerColor: Colors.red, headerTitle: "Birthday Playlist"));
    editingPageList.add(new EditingPageModel(headerColor: Colors.purple, headerTitle: "Travel Plans"));
  }
  
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: editingPageList.length,
      itemBuilder: (BuildContext context, int index) {
        return new TodoEditingWidget(headerColor: editingPageList[index].headerColor,
         headerTitle: editingPageList[index].headerTitle,);
      }
      );
  }
}