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
        /*decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(255, 244, 141, 1),
              Color.fromRGBO(255, 244, 141, 1)
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            //tileMode: TileMode.clamp,
          ),
        ),*/
        color: Color.fromRGBO(255, 244, 141, 1),
      ),
    ),
    //--------------------------------------------------------------------------
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

        Image.asset("images/pypb.png", height: 150, width: 70),
        IconButton(
          alignment: Alignment(48, 0),
          onPressed: () {},
          icon: Icon(
            Icons.share,
            color: Color.fromRGBO(189, 147, 83, 0.89),
          ),
        ),
      ],
    ),
  );
}
