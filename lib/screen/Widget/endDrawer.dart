import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pec_yellow_pages/screen/EndDrawer/About_main.dart';
import 'package:pec_yellow_pages/screen/EndDrawer/add.dart';
import 'package:pec_yellow_pages/screen/EndDrawer/edit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pec_yellow_pages/screen/EndDrawer/feedback.dart';
import 'package:toggle_switch/toggle_switch.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
      child: Container(
        width: 250,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)),
          child: Drawer(
            elevation: 16.0,
            child: Column(
              children: <Widget>[
                //1
                Padding(
                  padding: EdgeInsets.only(top: 180),
                  child: ListTile(
                    title: Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.solidMoon,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text("DARK MODE",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        ToggleSwitch(
                          totalSwitches: 2,
                          minWidth: 20.0,
                          cornerRadius: 20.0,
                          minHeight: 20,
                          initialLabelIndex: 0,
                          activeBgColor: [Colors.black],
                          onToggle: (index) {},
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 1,
                ),

                //2
                InkWell(
                    child: ListTile(
                  leading: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                  title: Text("EDIT",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Edit()),
                    );
                  },
                )),

                Divider(
                  height: 1,
                ),

                //3
                ListTile(
                  leading: Icon(
                    FontAwesomeIcons.plusCircle,
                    color: Colors.black,
                  ),
                  title: Text("CREATE",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Add()),
                    );
                  },
                ),

                Divider(
                  height: 3,
                ),

                //4
                ListTile(
                  leading: Icon(
                    FontAwesomeIcons.handsHelping,
                    color: Colors.black,
                  ),
                  title: Text("FEEDBACK",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      )),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FeedBack()),
                    );
                  },
                ),

                Divider(
                  height: 3,
                ),

                //5
                InkWell(
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.black,
                    ),
                    title: Text(
                      "ABOUT US",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //LAST
                Icon(
                  Icons.more_horiz,
                  size: 50,
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
