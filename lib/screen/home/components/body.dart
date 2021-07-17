import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pec_yellow_pages/screen/Widget/search_box.dart';
import 'package:pec_yellow_pages/screen/home/components/ItemList.dart';

class Body extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Column(
      children: <Widget>[
        // SEARCH BOX ----------------------------------------------------------
        SearchBox(),

        // DROP DOWN BOX--------------------------------------------------------
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Drop1(),
                  VerticalDivider(
                    width: 30,
                    color: Colors.blue,
                  ),
                  Drop2()
                ],
              ),
            ),
          ),
        ),

        //GRID VIEW PROPERTIES -------------------------------------------------
        ItemList(),
      ],
    );
  }
}

//------------------------------------------------------------------------------
class Drop1 extends StatefulWidget {
  const Drop1({Key? key}) : super(key: key);
  @override
  _Drop1State createState() => _Drop1State();
}

class _Drop1State extends State<Drop1> {
  final List<String> dept = ["ALL", "ACADEMICS", "ADMINISTRATION"];
  String selecteddept = "ALL";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 141,
      //padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          DropdownButton<String>(
            value: selecteddept,
            onChanged: (value) {
              setState(() {
                selecteddept = value.toString();
              });
            },
            items: dept.map<DropdownMenuItem<String>>((value) {
              return DropdownMenuItem(
                child: Text(
                  value,
                  style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                value: value,
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

class Drop2 extends StatefulWidget {
  const Drop2({Key? key}) : super(key: key);
  @override
  _Drop2State createState() => _Drop2State();
}

class _Drop2State extends State<Drop2> {
  final List<String> dept = [
    "CSE",
    "ECE",
    "EEE",
    "IT",
    "CHEMICAL",
    "MECHANICAL",
    "CIVIL",
    "EIE"
  ];
  String selecteddept = "CSE";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 139,
      child: Column(
        children: <Widget>[
          DropdownButton<String>(
              value: selecteddept,
              onChanged: (value) {
                setState(() {
                  selecteddept = value.toString();
                });
              },
              items: dept.map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem(
                  child: Text(value,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400))),
                  value: value,
                );
              }).toList())
        ],
      ),
    );
  }
}
