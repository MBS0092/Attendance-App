import 'package:flutter/material.dart';

class MyGrade extends StatefulWidget {
  const MyGrade({Key? key}) : super(key: key);

  @override
  MyGradeState createState() => MyGradeState();
}

class MyGradeState extends State<MyGrade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('Grade'),
        backgroundColor: Colors.blue,
      ),
    );
  }
}