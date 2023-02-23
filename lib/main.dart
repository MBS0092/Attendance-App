import 'package:attendanceapp/Admin.dart';
import 'package:attendanceapp/AdminLogin.dart';
import 'package:attendanceapp/Forget password.dart';
import 'package:attendanceapp/New password.dart';
import 'package:attendanceapp/Register.dart';
import 'package:attendanceapp/Report.dart';
import 'package:attendanceapp/home.dart';
import 'package:attendanceapp/login.dart';
import 'package:attendanceapp/Profile.dart';
import 'package:attendanceapp/Grade.dart';
import 'package:attendanceapp/Student.dart';
import 'package:attendanceapp/Attendance.dart';
import 'package:flutter/material.dart';

import 'Grade.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myhome(),
    routes: {
      '/profile': (_) => Myprofile(),
      '/Attendance' : (_) => MyAttendance(),
      '/Grade': (_) => MyGrade(),
      'register': (context) => MyRegister(),
        'Admin': (context) => MyAdmin(),
      'LoginAd': (context) => MyLoginAd(),
      'login': (context) => MyLogin(),
      'Forget password': (context) => MyForget(),
      'New password': (context) => Mynewpass(),
      'home': (context) => Myhome(),
      'Student': (context) => MyStudent(),
      'profile': (context) => Myprofile(),
      'Attendance': (context) => MyAttendance(),
      'Grade': (context) => MyGrade(),
      'Report': (context) => MyReport(),
    }
  ));
}

