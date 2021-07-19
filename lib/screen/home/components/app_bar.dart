import 'package:flutter/material.dart';

import 'package:pec_yellow_pages/screen/Widget/clippbar.dart';
import 'package:pec_yellow_pages/Dark_Theme_Providers/theme_data.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    toolbarHeight: 108,
    iconTheme: IconThemeData(color: appbarIconColor),
    elevation: 0,

    //custom clipbar -----------------------------------------------------------
    flexibleSpace: ClipPath(
      clipper: Customclippbar(),
      child: Container(
        color: appBarcolor,
      ),
    ),
    //--------------------------------------------------------------------------
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
            alignment: Alignment(-80, 0),
            child: Image.asset(
              "images/pypb.png",
              height: 100,
            )),
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
