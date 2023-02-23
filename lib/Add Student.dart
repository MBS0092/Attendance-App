import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myadd extends StatefulWidget {
  const Myadd({Key? key}) : super(key: key);

  @override
  State<Myadd> createState() => _MyaddState();
}

class _MyaddState extends State<Myadd> {
  final _formKey = GlobalKey();
  updateUser (){
    print('user update');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('Update Student Profile'),
        backgroundColor: Colors.blue,
    ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(),
                child: TextFormField(
                  autofocus: false,
                  onChanged: (value) => {},
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.white),
                    labelText: 'Name',
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide:BorderSide(
                          color: Colors.white
                      ),
                    ),
                    border: OutlineInputBorder(),
                    errorStyle:
                    TextStyle(color: Colors.red,
                        fontSize: 15),
                  ),

                ),
              ),
            ],
          ),
        ) ,
      ),
    );
  }
}
