import 'package:flutter/material.dart';
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
            ),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final mylist = query.isEmpty
        ? Teacher
        : Teacher.where(
            (element) => element.name.toLowerCase().startsWith(query)).toList();

    return ListView.builder(
      itemCount: mylist.length,
      itemBuilder: (context, index) {
        final Contact listitem = mylist[index];
        return ListTile(
          title: InkWell(
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
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("images/" + Teacher[index].img),
                  maxRadius: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(listitem.name),
                    Text(listitem.dept),
                  ],
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