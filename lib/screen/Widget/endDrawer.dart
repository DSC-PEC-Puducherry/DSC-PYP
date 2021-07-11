import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pec_yellow_pages/screen/About_us/About_main.dart';

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
        //height: 700,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(70), bottomLeft: Radius.circular(70)),
          child: Drawer(
            elevation: 16.0,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 190),

                  //1
                  child: InkWell(
                      child: ListTile(
                    leading: Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                    title: Text(
                      "EDIT",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    onTap: null,
                  )),
                ),

                //2
                Divider(
                  height: 1,
                ),
                ListTile(
                  leading: Icon(
                    Icons.add_rounded,
                    color: Colors.black,
                  ),
                  title: Text(
                    "CREATE",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  onTap: null,
                ),

                //3
                Divider(
                  height: 3,
                ),
                ListTile(
                  leading: Icon(
                    Icons.feedback,
                    color: Colors.black,
                  ),
                  title: Text(
                    "FEEDBACK",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  onTap: null,
                ),

                //4
                Divider(
                  height: 3,
                ),

                ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Colors.black,
                  ),
                  title: Text(
                    "ABOUT US",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
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
