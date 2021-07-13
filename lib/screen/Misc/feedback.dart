import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          padding: new EdgeInsets.all(40.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Feedback ",
                      style: GoogleFonts.oswald ( textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                    ),
                    Text(
                      " Form",
                      style: GoogleFonts.oswald ( textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow,
                      ),),
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
                              filled: true
                              ),
                              keyboardType: TextInputType.multiline,
                              minLines: 3,
                              maxLines: 5,
                              )
                    ],
                  ),
                ),
                SizedBox(height: 25),
                new SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {},                 // mailto DSC@PEC.EDU
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
      bottomNavigationBar: new BottomAppBar(
        child: Container(
          height: 50,
          child: Column(
            children: <Widget>[
            new Text(""),  
            new Text("Feedbacks are sent to DSC-PEC Developers team.",
            style: TextStyle( 
              color: Colors.black,
              fontWeight: FontWeight.bold,              
              )
            ),
            ],
          ),
          color: Colors.yellow,
      ),
      ),
    );
  }
}
