import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pec_yellow_pages/screen/EndDrawer/About_main.dart';
import 'package:pec_yellow_pages/screen/EndDrawer/add.dart';
import 'package:pec_yellow_pages/screen/EndDrawer/edit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pec_yellow_pages/screen/EndDrawer/feedback.dart';
import 'package:pec_yellow_pages/Dark_Theme_Providers/dark_theme.dart';
import 'package:provider/provider.dart';

class EndDrawer extends StatefulWidget {
  const EndDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _EndDrawerState createState() => _EndDrawerState();
}

class _EndDrawerState extends State<EndDrawer> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<DarkThemeProvider>(context);
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
                ),

                ListTile(
                    leading: Icon(Icons.dark_mode),
                    title: Text("DARK MODE",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 16.5, fontWeight: FontWeight.w500),
                        )),
                    trailing: CupertinoSwitch(
                        activeColor: Colors.grey,
                        value: themeProvider.darkTheme,
                        onChanged: (onChanged) {
                          setState(() {
                            themeProvider.darkTheme = onChanged;
                          });
                        })),
                Divider(
                  height: 1,
                ),

                //2
                InkWell(
                    child: ListTile(
                  leading: Icon(
                    Icons.edit,
                  ),
                  title: Text("EDIT",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
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
                  ),
                  title: Text("CREATE",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
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
                  ),
                  title: Text("FEEDBACK",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
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
                    ),
                    title: Text(
                      "ABOUT US",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          //color: Colors.black
                        ),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
