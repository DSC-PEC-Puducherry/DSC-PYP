import 'package:flutter/material.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Color.fromRGBO(255, 244, 141, 1),
    toolbarHeight: 80,
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        /*RichText(
          text: TextSpan(
            style: TextStyle(fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                  text: "Pec Yellow",
                  style: TextStyle(color: ksecondaryColor, fontSize: 20)),
              TextSpan(
                  text: " Pages",
                  style: TextStyle(color: kPrimaryColor, fontSize: 20)),
            ],
          ),
        ),*/
        Align(
            alignment: Alignment(-80, 0),
            child: Image.asset("images/pypb.png", height: 150, width: 150)),
        Padding(
          padding: EdgeInsets.only(left: 82),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
            ),
          ),
        ),
      ],
    ),
  );
}
