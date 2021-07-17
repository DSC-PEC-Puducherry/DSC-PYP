import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      child: ListView.builder(
        itemCount: 11,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      child: Text(Teacher[index].name[0]),
                    )),
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                    childAspectRatio: 0.69),
                itemCount: Teacher.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 15, right: 8, left: 2),
                    child: Visibility(
                      child: Container(
                        child: InkWell(
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
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: PhysicalModel(
                              color: Colors.white,
                              shadowColor: Colors.blue,
                              child: Card(
                                color: Color.fromRGBO(250, 243, 212, 1),
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
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
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          Teacher[index].name,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          Teacher[index].dept,
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.blue),
                                        ),
                                      ),
                                    ],
                                  ),
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
      img: "jc.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "bjc1",
      dept: "cse",
      img: "jc.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "cjc2",
      dept: "cse",
      img: "jc.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "djc3",
      dept: "cse",
      img: "jc.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "djc4",
      dept: "cse",
      img: "jc.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "ejc5",
      dept: "cse",
      img: "jc.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "gjc6",
      dept: "cse",
      img: "jc.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "hjc7",
      dept: "cse",
      img: "jc.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "jc8",
      dept: "cse",
      img: "jc.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "kjc9",
      dept: "cse",
      img: "jc.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "ljc10",
      dept: "cse",
      img: "jc.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "ejc5",
      dept: "cse",
      img: "jc.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "kagujc6",
      dept: "cse",
      img: "jc.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "tammuhjc7",
      dept: "cse",
      img: "jc.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "sammujc8",
      dept: "cse",
      img: "jc.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "shikjc9",
      dept: "cse",
      img: "jc.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu'),
  Contact(
      name: "kamljc10",
      dept: "cse",
      img: "jc.jpg",
      phone_no: "9442362922",
      email: 'selvaraj@pec.edu')
];
