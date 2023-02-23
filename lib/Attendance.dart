import 'package:flutter/material.dart';

class MyAttendance extends StatefulWidget {
  const MyAttendance({Key? key}) : super(key: key);

  @override
  MyAttendanceState createState() => MyAttendanceState();
}

class MyAttendanceState extends State<MyAttendance> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('Attendance'),
          backgroundColor: Colors.blue,
        ),


      ),
    );
  }
}

