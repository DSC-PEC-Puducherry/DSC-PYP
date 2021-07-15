import 'package:flutter/material.dart';

AppBar homeAppBar(BuildContext context) {

  return AppBar(
    backgroundColor: Color.fromRGBO(255, 244, 141, 1),
    toolbarHeight: 80,
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
            alignment: Alignment(-80, 0),
            child: Image.asset("images/pypb.png", height: 75, width: 100)),
        Padding(
          padding: EdgeInsets.only(left: 130),
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
