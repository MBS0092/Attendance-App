import 'package:flutter/material.dart';

class MyStudent extends StatefulWidget {
  const MyStudent({Key? key}) : super(key: key);

  @override
  MyStudentState createState() => MyStudentState();
}

class MyStudentState extends State<MyStudent> {
  @override
  Widget build(BuildContext context){
    return Material(
        child: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            title: Text('Student Attendance'),
            backgroundColor: Colors.blue,
          ),
          drawer: Drawer(
            child:
              Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  color: Theme.of(context).primaryColor,
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          margin:  EdgeInsets.only(
                            top: 30,
                            bottom: 100,
                          ),
                        ),
                      ],
                    )
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, 'profile');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.grade),
                  title: Text('Grades',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, 'Grade');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.book),
                  title: Text('Attendance',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, 'Attendance');
                  },
                ),
              ]
              ),
          ),
          body: Center(
            child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 120, right: 110),
                        child: Column(
                          children: [
                            RaisedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'Attendance');
                              },
                              color: Colors.yellowAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10))) ,
                              child: Text(
                                'Mark Attendance',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19),

                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            RaisedButton(
                                onPressed: () {
                                  print("RaisedButton");
                                  Navigator.pushNamed(context, 'Attendance');
                                },
                                color: Colors.yellowAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10))) ,
                                child: Text(
                                  'View Attendance',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                  ),
                                )),
                            SizedBox(
                              height: 40,
                            ),
                            RaisedButton(
                                onPressed: () {
                                  print("RaisedButton");
                                  Navigator.pushNamed(context, 'Attendance');
                                },
                                color: Colors.yellowAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10))) ,
                                child: Text(
                                  'Mark Leave',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                  ),
                                )
                            ),
                          ],
                        )
                    ),
                  ],
                ),
              ),
            ),
          ),
    );
  }
}