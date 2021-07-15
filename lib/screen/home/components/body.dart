import 'package:flutter/material.dart';
import 'package:pec_yellow_pages/screen/Widget/search_box.dart';
import 'package:pec_yellow_pages/screen/home/components/ItemList.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: <Widget>[
        // SEARCH BOX ----------------------------------------------------------
        SearchBox(
          onChanged: (value) {},
        ),

        // DROP DOWN BOX--------------------------------------------------------
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(
              children: [Drop1(), SizedBox(width: 30), Drop2()],
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
  final List<String> dept = ["ACADEMICS", "ADMINISTRATION"];
  String selecteddept = "ACADEMICS";
  @override
  Widget build(BuildContext context) {
    return Container(
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
                child: Text(value),
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
                  child: Text(value),
                  value: value,
                );
              }).toList())
        ],
      ),
    );
  }
}
