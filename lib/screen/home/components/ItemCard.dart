import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String name, dept, img;
  final Function() press;
  final String phone_no;
  const ItemCard({
    Key? key,
    required this.name,
    required this.dept,
    required this.press,
    required this.img,
    required this.phone_no,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //EDIT2
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      //EDIT3
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 20,
              color: Color(0xFFB0CCE1).withOpacity(0.32))
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Positioned(
                  top: .0,
                  left: .0,
                  right: .0,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/" + img),
                      maxRadius: 38.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  dept,
                  style: TextStyle(fontSize: 14.1, color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
