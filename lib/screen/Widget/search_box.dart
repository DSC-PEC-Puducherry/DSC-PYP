import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pec_yellow_pages/screen/Contact_page/details_screen.dart';
import 'package:pec_yellow_pages/screen/home/components/ItemList.dart';

class SearchBox extends StatelessWidget {
  SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: searchitem());
              },
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.keyboard_voice),
          ),
        ],
      ),
    );
  }
}

class searchitem extends SearchDelegate<ItemList> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          //on click it moves back to main page
          close(context, ItemList());
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    final mylist = Teacher;

    return ListView.builder(
      itemCount: mylist.length,
      itemBuilder: (context, index) {
        final Contact listitem = mylist[index];
        return ListTile(
          title: Text(
            listitem.name,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final mylist = query.isEmpty
        ? Teacher // if search bar is empty it displays all contacts
        : Teacher.where(
                (element) => element.name.toLowerCase().startsWith(query))
            .toList(); // when start typing it displays the selected contact

    return ListView.builder(
      itemCount: mylist.length,
      itemBuilder: (context, index) {
        final Contact listitem = mylist[index];
        return ListTile(
          title: InkWell(
            //on ing the contacts it navigates to new page
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    text: Teacher[index].name,
                    img: "images/" + Teacher[index].img,
                    dept: Teacher[index].dept,
                    phone: Teacher[index].phone_no,
                    email: Teacher[index].email,
                  ),
                ),
              );
            },
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("images/" + Teacher[index].img),
                      maxRadius: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          listitem.name,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Text(
                          listitem.dept,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

//search bar design
/*    margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: ksecondaryColor.withOpacity(0.32),
        ),
      ),
      child: TextField(
        onTap: () {
          showSearch(context: context, delegate: searchitem());
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(Icons.search),
          hintText: "Search Contacts",
          hintStyle: TextStyle(color: ksecondaryColor),
        ),
      ),*/
