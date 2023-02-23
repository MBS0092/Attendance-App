import 'dart:ffi';

import 'package:flutter/material.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({Key? key}) : super(key: key);

  @override
  MyprofileState createState() => MyprofileState();
}

class MyprofileState extends State<Myprofile> {
  var name = 'name';
  var fatherName = 'fatherName';
  var description = 'description';

  final String errorname = 'name';
  final String errorfathername = 'fathername';
  final String errordescription = 'description';
  final bool val = true;
  final nameController = TextEditingController();
  final fatherController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    fatherController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  clearText() {
    nameController.clear();
    fatherController.clear();
    descriptionController.clear();
  }

  addUser() {
    print("user Added");
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('Profile'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
              SizedBox(
                height: 5.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    errorText: val ? errorname : null,
                    prefixIcon: Icon(Icons.person, color: Colors.white),
                    labelText: 'Name',
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.white),
                    labelText: 'Father Name',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: OutlineInputBorder(),
                    errorStyle: TextStyle(color: Colors.red, fontSize: 15),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.description, color: Colors.white),
                    labelText: 'Description',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: OutlineInputBorder(),
                    errorStyle: TextStyle(color: Colors.red, fontSize: 15),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                          child: Text('Register'),
                          color: Colors.white,
                          onPressed: () {}),
                      MaterialButton(
                        child: Text('Reset'),
                        color: Colors.white,
                        onPressed: () => {clearText()},
                      ),
                    ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

String? validatename(String? formname) {
  if (formname == null || formname.isEmpty) {
    return 'name is required';
  }
  return null;
}

String? validatefathername(String? formfathername) {
  if (formfathername == null || formfathername.isEmpty) {
    return 'name is required';
  }
  return null;
}

String? validatedescription(String? formdescription) {
  if (formdescription == null || formdescription.isEmpty) {
    return 'name is required';
  }
  return null;
}
