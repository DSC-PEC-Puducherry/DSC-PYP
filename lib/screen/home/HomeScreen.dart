import 'package:flutter/material.dart';
import 'package:pec_yellow_pages/screen/EndDrawer/body.dart';
import 'package:pec_yellow_pages/screen/Widget/endDrawer.dart';
import 'package:pec_yellow_pages/screen/home/components/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Body(),
      endDrawer: Padding(
        padding: EdgeInsets.only(top: 30),
        child: EndDrawer(),
      ),
    );
  }
}
