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
              children: [drop1(), SizedBox(width: 50), drop2()],
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
class drop1 extends StatefulWidget {
  const drop1({Key? key}) : super(key: key);

  @override
  _drop1State createState() => _drop1State();
}

class _drop1State extends State<drop1> {
  final List<String> dept = ["ACDEMICS", "ADMINISTRATION"];
  String selecteddept = "ACDEMICS";
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

class drop2 extends StatefulWidget {
  const drop2({Key? key}) : super(key: key);

  @override
  _drop2State createState() => _drop2State();
}

class _drop2State extends State<drop2> {
  final List<String> dept = [
    "CSE",
    "ECE",
    "EEE",
    "IT",
    "CHEMICAL",
    "MECHANICAL",
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
