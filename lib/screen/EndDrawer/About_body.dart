import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pec_yellow_pages/screen/EndDrawer/About_card.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          //DSC IMAGE
          Image.asset(
            'images/DSC.png',
            width: 100,
            height: 70,
          ),

          //DSC TEXT 1
          Text("Developer Student Clubs",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              )),

          //DSC TEXT 2
          Text("Pondicherry Engineering College",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              )),

          //DSC TXT GAP1
          SizedBox(height: 10),

          //DSC TXT GAP2
          SizedBox(
            height: 20,
          ),

          //DSC ABT DETAILS1
          Row(
            children: [
              AboutusCard(
                name: "Dr. Selvaradjou Ka",
                dept: 'Mentor',
                img: 'selvaraj.jpg',
                instaLink: 'null',
                mailLink: 'selvaraj@pec.edu',
                linkedInLink:
                    'https://www.linkedin.com/in/selvaradjou-kandasamy-6a083748/',
                fbLink: 'https://www.facebook.com/selvaraj.kandasamy.106/',
                gitLink: 'null',
              ),
              AboutusCard(
                name: "Thamizharasan G",
                dept: 'Backend Developer',
                img: 'tamil.jpg',
                instaLink: 'https://www.instagram.com/thamizh813813/',
                mailLink: 'chandranjaya919@pec.edu',
                linkedInLink: 'null',
                fbLink: 'null',
                gitLink: 'https://github.com/Thamizh813',
              ),
            ],
          ),

          //DSC ABT DETAILS2
          Row(
            children: [
              AboutusCard(
                name: "Yuvachandiran",
                dept: 'Backend Developer',
                img: 'yuva.jpg',
                instaLink: 'https://www.instagram.com/Yuvachn/',
                mailLink: 'yuva10114@gmail.com',
                linkedInLink: 'null',
                fbLink: 'null',
                gitLink: 'https://github.com/yuvachn',
              ),
              AboutusCard(
                name: "Jayachandran S",
                dept: 'Frontend Developer',
                img: 'jc.jpg',
                mailLink: 'chandranjaya919@pec.edu',
                linkedInLink:
                    'https://www.linkedin.com/in/jayachandran-s-966728215/',
                instaLink: 'null',
                fbLink: 'null',
                gitLink: 'https://github.com/Jayachandran12',
              ),
            ],
          ),

          //DSC ABT DETAILS3
          Row(
            children: [
              AboutusCard(
                name: "Harish Singh",
                dept: 'Frontend Developer',
                img: 'harish.jpg',
                mailLink: 'singhharish734@pec.edu',
                linkedInLink: 'https://linkedIn.com/in/singh-harish',
                instaLink: 'https://instagram.com/singh_harish_ig',
                fbLink: 'null',
                gitLink: 'null',
              ),
              AboutusCard(
                name: "Dheepak G",
                dept: 'UI designer',
                img: 'deepak.png',
                instaLink: 'null',
                mailLink: 'dheepakyadav2411@pec.edu',
                linkedInLink: 'https://www.linkedin.com/in/dheepak-g/',
                fbLink: 'null',
                gitLink: 'https://github.com/DHEEPAK29',
              ),
            ],
          ),

          //DSC ABT DETAILS4
          Row(
            children: [
              AboutusCard(
                name: "Madhumita M",
                dept: 'UI designer',
                img: 'madhu.jpg',
                instaLink: 'https://www.instagram.com/_m.a.d.h.u.18/',
                mailLink: 'madhumitamanivannane@pec.edu',
                linkedInLink:
                    'https://www.linkedin.com/in/madhumita-m-aa8251211',
                fbLink: 'null',
                gitLink: 'null',
              ),
              AboutusCard(
                name: "Agilan I",
                dept: 'UI designer',
                img: 'agilan.jpg',
                instaLink: 'null',
                mailLink: 'agilanilan2002@pec.edu',
                linkedInLink:
                    'https://www.linkedin.com/in/agilan-ilan6492091ab/',
                fbLink: 'null',
                gitLink: 'https://github.com/Agilan-ilan',
              ),
            ],
          ),

          //DSC ABT DETAILS5
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AboutusCard(
                name: "Snigdha Pai",
                dept: 'UI designer',
                img: 'snigdha.jpg',
                instaLink: 'null',
                mailLink: 'snigdhapai528@pec.edu',
                linkedInLink:
                    'https://www.linkedin.com/in/snigdha-pai-b6667419a',
                fbLink: 'null',
                gitLink: 'https://github.com/snigdha737',
              ),
            ],
          ),

          //DSC TXTGAP3
          SizedBox(height: 20),

          //DSC BOTTOM1
          Text(
            "Get in touch",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),

          //DSC BOTTOM2
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  launch("https://www.linkedin.com/company/google-dsc-pec");
                },
                icon: Icon(FontAwesomeIcons.linkedin),
                iconSize: 18,
              ),
              IconButton(
                onPressed: () {
                  launch("mailto:google.dsc@pec.edu");
                },
                icon: Icon(FontAwesomeIcons.envelope),
                iconSize: 18,
              ),
              IconButton(
                onPressed: () {
                  launch("https://www.instagram.com/dsc_pec/");
                },
                icon: Icon(FontAwesomeIcons.instagram),
                iconSize: 18,
              ),
            ],
          ),

          //DSC BOTTOM3
          Container(
            padding: new EdgeInsets.all(20),
            child: new Text(
              "Google Developer Student clubs are community groups for College and University students interested in Google developer technologies. " +
                  "Students from all undergraduate or graduate programs with an interest in growing as a developer are welcome." +
                  "By joining a DSC ,students grow their Knowledge in a peer-to-peer learning environment and build solutions for a local businesses and their community",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //textAlign: TextAlign.center, //if needed add
            ),
          ),
        ],
      ),
    );
  }
}
