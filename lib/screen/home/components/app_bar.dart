import 'package:flutter/material.dart';
import 'package:pec_yellow_pages/screen/Widget/clippbar.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    // backgroundColor: Color.fromRGBO(255, 244, 141, 1),
    toolbarHeight: 104,
    iconTheme: IconThemeData(color: Color.fromRGBO(189, 147, 83, 0.89)),
    elevation: 0,

    //custom clipbar -----------------------------------------------------------
    flexibleSpace: ClipPath(
      clipper: Customclippbar(),
      child: Container(
        color: Color.fromRGBO(255, 244, 141, 1),
      ),
    ),
    //--------------------------------------------------------------------------
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
