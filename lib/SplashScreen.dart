import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:pec_yellow_pages/screen/home/HomeScreen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 7), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.black,
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/pypb.png",
            width: 100,
            height: 100,
          ),
          /*Lottie.asset(
            "images/spl.json",
            width: 150,
            height: 150,
          ),*/
          SizedBox(
            height: 15,
          ),
          Text(
            "PEC YELLOW PAGES",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            )),
          ),
          Text(
            "An outcome of Google DSC-PEC",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            )),
          ),
          SizedBox(
            height: 25,
          ),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Please wait",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            )),
          ),
        ],
      ),
    ));
  }
}
