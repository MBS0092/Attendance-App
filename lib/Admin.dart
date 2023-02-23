import 'package:flutter/material.dart';

class MyAdmin extends StatefulWidget {
  const MyAdmin({Key? key}) : super(key: key);

  @override
  MyAdminState createState() => MyAdminState();
}

class MyAdminState extends State<MyAdmin> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.lightBlue[300],
        appBar: AppBar(
          title: Text('Dashboard'),
          backgroundColor: Colors.blue[700],
        ),
      body: Container(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.1),
        child: GridView.count(
            crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'Attendance');
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.book, size: 70),
                      Text("Attendance",
                          style: new TextStyle(fontSize: 17.0)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'profile');
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.person, size: 70),
                      Text("Student\n profile",
                          style: new TextStyle(fontSize: 17.0)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'Grade');
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.grade, size: 70),
                      Text("Grade",
                          style: new TextStyle(fontSize: 17.0)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'Report');
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.report, size: 70),
                      Text("Report",
                          style: new TextStyle(fontSize: 17.0)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'LoginAd');
                },





                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.logout, size: 70),
                      Text("Logout",
                          style: new TextStyle(fontSize: 17.0)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
        );
  }
}