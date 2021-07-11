import 'dart:ui';
import 'package:flutter/material.dart';


class Add extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Add> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      appBar: new AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.yellowAccent,
      ),
      
      body: SingleChildScrollView (
      child: new Container(
        padding: new EdgeInsets.all(50.0),
        child: new Center(
          child: new Column(
            children: <Widget> [

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Add ",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    " Contact",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

                new Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Icon( Icons.person ),

                      SizedBox( height: 7 ),
          
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

                      Icon( Icons.house ),

                      SizedBox( height: 7 ),
          
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

                      Icon( Icons.phone ),

                      SizedBox( height: 7 ),
          
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

                      Icon( Icons.mail ),

                      SizedBox( height: 7 ),
          
                      TextField(
                        decoration: new InputDecoration(
                            hintText: "Enter E-mail ID",
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
                child: new Text("ADD",
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