// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Activites extends StatelessWidget {
  const Activites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search),
                  Container(
                    width: 300,
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          hintText: "Search Activities",
                          border: InputBorder.none),
                    ),
                  ),
                  Icon(Icons.tune_rounded)
                ]),
          ),
          Image(image: AssetImage("assets/images/activities.jpg")),
          Container(
            height: 170,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You haven't done anything\n yet!",
                  style: TextStyle(color: Colors.grey.shade900, fontSize: 25),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Run a Charge or perhaps two,and everything you've \nbeen up to will be revealed",
                  style: TextStyle(color: Colors.grey.shade500),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          SizedBox()
        ],
      ),
    );
  }
}
