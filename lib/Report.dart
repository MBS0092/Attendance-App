import 'package:flutter/material.dart';

class MyReport extends StatefulWidget {
  const MyReport({Key? key}) : super(key: key);

  @override
  MyReportState createState() => MyReportState();
}

class MyReportState extends State<MyReport> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('Report'),
          backgroundColor: Colors.blue,
        ),

      ),
    );
  }
}

