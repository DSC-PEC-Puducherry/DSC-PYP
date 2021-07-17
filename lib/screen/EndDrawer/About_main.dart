import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pec_yellow_pages/Colors.dart';
import 'package:pec_yellow_pages/screen/EndDrawer/About_body.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sideApp,
        title: Text('ABOUT US'),
      ),
      body: Body1(),
    );
  }
}
