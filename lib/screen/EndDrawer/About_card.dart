import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pec_yellow_pages/screen/providers/theme_data.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutusCard extends StatelessWidget {
  final String name, dept, img;
  final String mailLink;
  final String instaLink;
  final String linkedInLink;
  final String fbLink;
  final String gitLink;

  const AboutusCard({
    required this.name,
    required this.dept,
    required this.img,
    required this.mailLink,
    required this.instaLink,
    required this.linkedInLink,
    required this.fbLink,
    required this.gitLink,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(9, 5, 5, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: AboutCardcolor,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 20,
              color: Colors.black.withOpacity(0.32))
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Positioned(
                top: .0,
                left: .0,
                right: .0,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8), //EDIT4
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/" + img),
                    maxRadius: 38.0,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  if (mailLink != 'null')
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.envelope,
                        color: Colors.black,
                      ),
                      iconSize: 18,
                      onPressed: () {
                        launch("mailto:$mailLink");
                      },
                    ),
                  if (instaLink != 'null')
                    IconButton(
                      icon:
                          Icon(FontAwesomeIcons.instagram, color: Colors.black),
                      iconSize: 20,
                      onPressed: () {
                        launch(instaLink);
                      },
                    ),
                  if (linkedInLink != 'null')
                    IconButton(
                      icon:
                          Icon(FontAwesomeIcons.linkedin, color: Colors.black),
                      iconSize: 20,
                      onPressed: () {
                        launch(linkedInLink);
                      },
                    ),
                  if (fbLink != 'null')
                    IconButton(
                      icon:
                          Icon(FontAwesomeIcons.facebook, color: Colors.black),
                      iconSize: 20,
                      onPressed: () {
                        launch(fbLink);
                      },
                    ),
                  if (gitLink != 'null')
                    IconButton(
                      icon: Icon(FontAwesomeIcons.github, color: Colors.black),
                      iconSize: 20,
                      onPressed: () {
                        launch(gitLink);
                      },
                    ),
                ],
              ),
              Text(
                name,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                dept,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
