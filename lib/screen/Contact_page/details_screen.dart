import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
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
      //backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 244, 141, 1),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Align(
                alignment: Alignment.topCenter,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: "Contact ",
                          style: TextStyle(color: Colors.yellow, fontSize: 30)),
                      TextSpan(
                          text: " Details",
                          style: TextStyle(color: Colors.black, fontSize: 30))
                    ],
                  ),
                ),
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
                  Text(text,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
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
                  Text(dept,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
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
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))
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
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
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
                        color: Color.fromRGBO(255, 237, 73, 1),
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
                        color: Color.fromRGBO(255, 237, 73, 1),
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
                        color: Color.fromRGBO(255, 237, 73, 1),
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
