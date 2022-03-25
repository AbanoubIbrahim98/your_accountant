import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen_task/Login_screen.dart';
import 'package:login_screen_task/Reusable widgets.dart';
import 'package:login_screen_task/Registration_screen.dart';

void main() => runApp(Task());

class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
