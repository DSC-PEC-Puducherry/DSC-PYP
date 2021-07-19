import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pec_yellow_pages/Dark_Theme_Providers/theme_data.dart';
import 'package:share/share.dart';
import 'package:clipboard/clipboard.dart';

class DetailsScreen extends StatelessWidget {
  final String text, dept, img, email;
  final String phone;
  const DetailsScreen(
      {Key? key,
      required this.text,
      required this.dept,
      required this.img,
      required this.phone,
      required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: detailpgAppbar,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Contact",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.yellow,
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Details",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          //color: Colors.yellow,
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),

            //
            SizedBox(height: 30),
            Card(
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.grey),
                  ),
                  height: 170.0,
                  width: 180.0,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      img,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),

            //
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 80),
              child: Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
                      child: Icon(Icons.person, color: Colors.yellow)),
                  SizedBox(width: 20),
                  Text(
                    text,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 80),
              child: Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
                      child: Icon(FontAwesomeIcons.building,
                          color: Colors.yellow)),
                  SizedBox(width: 20),
                  Text(
                    dept,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 80),
              child: Row(children: [
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(245, 245, 245, 1),
                  child: Icon(
                    Icons.call,
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(width: 20),
                Text(phone,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)))
              ]),
            ),

            //
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 80),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(245, 245, 245, 1),
                    child: Icon(
                      Icons.mail_sharp,
                      color: Colors.yellow,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    email,
                    style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),

            //
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(245, 245, 245, 1),
                    child: IconButton(
                      onPressed: () {
                        //launch('tel:+91 $phone');
                        FlutterPhoneDirectCaller.callNumber(phone);
                      },
                      icon: Icon(
                        Icons.call,
                        color: detailIconcolor,
                      ),
                    ),
                  ),

                  //
                  SizedBox(width: 20),
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(245, 245, 245, 1),
                    child: IconButton(
                      onPressed: () {
                        Share.share(
                            "Staff name: $text \nPhone number: $phone \nDepartment: $dept");
                      },
                      icon: Icon(
                        Icons.share,
                        color: detailIconcolor,
                      ),
                    ),
                  ),

                  //
                  SizedBox(width: 20),
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(245, 245, 245, 1),
                    child: IconButton(
                      onPressed: () {
                        FlutterClipboard.copy(
                            "Staff name: $text \nPhone number: $phone \nDepartment: $dept");
                        Fluttertoast.showToast(
                            msg: "Copied to Clipboard",
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.grey,
                            textColor: Colors.white,
                            fontSize: 12.0);
                      },
                      icon: Icon(
                        Icons.copy,
                        color: detailIconcolor,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
