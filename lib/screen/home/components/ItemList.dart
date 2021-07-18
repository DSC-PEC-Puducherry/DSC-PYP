import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pec_yellow_pages/screen/Contact_page/details_screen.dart';

class Contact {
  final String name, dept, img, phone_no, email;
  Contact({
    required this.name,
    required this.dept,
    required this.img,
    required this.phone_no,
    required this.email,
  });
}

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //Listview builder returns Gridview Builder
      child: ListView.builder(
        itemCount: 11, //make it as 26 as the alphabet size is 26 (a - z)
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                child: Align(
                  alignment: Alignment.topLeft,

                  //Alphabet index inside circleAvatar
                  child: CircleAvatar(
                    child: Text(Teacher[index].name[0],
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500))),
                  ),
                ),
              ),

              // displays the staff details in grid
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 1.0,
                    mainAxisSpacing: 1.0,
                    childAspectRatio: 0.66),
                itemCount: Teacher.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 15, right: 8, left: 2),
                    child: Container(
                      child: InkWell(
                        //Navigating to Details page
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                      text: Teacher[index].name,
                                      img: "images/" + Teacher[index].img,
                                      dept: Teacher[index].dept,
                                      phone: Teacher[index].phone_no,
                                      email: Teacher[index].email,
                                    )),
                          );
                        },

                        //Design card
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: PhysicalModel(
                            color: Colors.white,
                            shadowColor: Colors.blue,

                            //Card
                            child: Card(
                              color: Color.fromRGBO(250, 243, 212, 1),
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //image
                                    Center(
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "images/" + Teacher[index].img),
                                        maxRadius: 34,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),

                                    //Text = name
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(Teacher[index].name,

                                          //Inorder to avoid overflow ellipses is used ,as staff name may be large
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          )),
                                    ),

                                    //Text = department
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(Teacher[index].dept,

                                          //Inorder to avoid overflow ellipses is used ,as staff name may be large
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.blue),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              )
            ],
          );
        },
      ),
    );
  }
}

List<Contact> Teacher = [
  Contact(
      name: "Selvarajou ka",
      dept: "cse",
      img: "selvaraj.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "Kavitha Kumar",
      dept: "cse",
      img: "selvaraj.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "Salini.P",
      dept: "cse",
      img: "selvaraj.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "Akila .V",
      dept: "cse",
      img: "selvaraj.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "Manoharan",
      dept: "cse",
      img: "selvaraj.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "Sayagraj Francis",
      dept: "cse",
      img: "selvaraj.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "Vijayalakshmi",
      dept: "ece",
      img: "selvaraj.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "Loganathan",
      dept: "cse",
      img: "selvaraj.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "Sarala",
      dept: "cse",
      img: "selvaraj.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "Sarulatha",
      dept: "cse",
      img: "selvaraj.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "Thenmozhi",
      dept: "cse",
      img: "selvaraj.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "Jayabarathy",
      dept: "cse",
      img: "selvaraj.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "Vimala",
      dept: "chemistry",
      img: "selvaraj.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "Nirmala",
      dept: "Maths",
      img: "selvaraj.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "Ayyapan",
      dept: "Maths",
      img: "selvaraj.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "Jeevanandham",
      dept: "eee",
      img: "selvaraj.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "Namachivayam",
      dept: "Physics",
      img: "selvaraj.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu')
];
