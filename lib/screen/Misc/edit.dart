import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Edit extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color.fromRGBO(255, 244, 141, 1),
      ),
      body: SingleChildScrollView(
        child: new Container(
          padding: new EdgeInsets.all(35.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Edit ",
                      style: GoogleFonts.oswald(
                        textStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      "Contact",
                      style: GoogleFonts.oswald(
                        textStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 244, 141, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                new Text("* All fields necessary."),
                new Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
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
                      Icon(CupertinoIcons.building_2_fill),
                      SizedBox(height: 7),
                      TextField(
                          decoration: new InputDecoration(
                              hintText: "Enter Department",
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
                              hintText: "Enter latest Phone Number",
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
                      Icon(Icons.mail),
                      SizedBox(height: 7),
                      TextField(
                          decoration: new InputDecoration(
                              hintText: "Enter latest E-mail ID",
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
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: new Text(
                      "UPDATE",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(255, 244, 141, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: new BottomAppBar(
        child: Container(
          height: 25,
          child: Column(
            children: <Widget>[
              //new Text(""),
              new Text("*NOTE: Subject to Verification.",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          color: Color.fromRGBO(255, 244, 141, 1),
        ),
      ),
    );
  }
}
