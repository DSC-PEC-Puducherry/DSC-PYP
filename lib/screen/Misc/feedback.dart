import 'dart:ui';
import 'package:flutter/material.dart';

class FeedBack extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        // toolbarHeight: 30,
        backgroundColor: Colors.yellowAccent,
      ),
      body: SingleChildScrollView(
        child: new Container(
          padding: new EdgeInsets.all(50.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Feedback ",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      " Form",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                new Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.person),
                      SizedBox(height: 7),
                      TextField(
                          decoration: new InputDecoration(
                              hintText: "Enter Name",
                              border: new OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(),
                              ),
                              fillColor: Color(0xfff3f3f4),
                              filled: true))
                    ],
                  ),
                ),
                new Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.phone),
                      SizedBox(height: 7),
                      TextField(
                          decoration: new InputDecoration(
                              hintText: "Enter Phone Number",
                              border: new OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(),
                              ),
                              fillColor: Color(0xfff3f3f4),
                              filled: true))
                    ],
                  ),
                ),
                new Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.feedback),
                      SizedBox(height: 7),
                      TextField(
                          decoration: new InputDecoration(
                              hintText: "Your Valueable Feedback here ..",
                              border: new OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(),
                              ),
                              fillColor: Color(0xfff3f3f4),
                              filled: true))
                    ],
                  ),
                ),
                SizedBox(height: 25),
                new SizedBox(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: new Text(
                      "SEND FEEDBACK",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
