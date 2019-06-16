import 'package:flutter/material.dart';
import 'package:todoapplication/ApplicationHome.dart';
import 'package:todoapplication/utils/Strings.dart';
import 'package:todoapplication/utils/TodoColors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: TodoStrings.AppTitle,
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        backgroundColor: TodoColors.backgroundColor,
        body: new SafeArea(child: new ApplicationHome()))
    );
  }
}
