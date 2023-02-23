import 'package:flutter/material.dart';

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  MyhomeState createState() => MyhomeState();
}

class MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/register.png'), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
            body: Stack(
            children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 40, top: 140),
                child: Text(
                  'Student\nAttendence App',
                  textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 120, right: 110),
                        child: Column(
                          children: [
                                RaisedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'LoginAd');
                                  },
                                  color: Colors.yellowAccent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30))) ,
                                  child: Text(
                                    'Admin',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 26),

                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                RaisedButton(
                                    onPressed: () {
                                      print("RaisedButton");
                                      Navigator.pushNamed(context, 'login');
                                    },
                                    color: Colors.yellowAccent,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(30))) ,
                                    child: Text(
                                      'Student',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 26,
                                      ),
                                    )),
                              ],
                            )
                        ),
                    ],
                  ),
                ),
              ),

              ]
            ),
        ),
    );
  }
}
