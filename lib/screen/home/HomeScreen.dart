import 'package:flutter/material.dart';

import 'package:pec_yellow_pages/screen/Widget/endDrawer.dart';
import 'package:pec_yellow_pages/screen/home/components/app_bar.dart';
import 'package:pec_yellow_pages/screen/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Body(),
      endDrawer: endDrawer(),
    );
  }
}
