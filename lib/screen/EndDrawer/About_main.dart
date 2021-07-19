import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pec_yellow_pages/screen/EndDrawer/About_body.dart';
import 'package:pec_yellow_pages/Dark_Theme_Providers/theme_data.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sideApp,
        centerTitle: true,
        title: Text('ABOUT US',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w400, color: Colors.black))),
      ),
      body: Body1(),
    );
  }
}
