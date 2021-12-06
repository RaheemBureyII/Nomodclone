import 'package:flutter/material.dart';

class Customers extends StatelessWidget {
  const Customers({Key? key}) : super(key: key);

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
                          hintText: "Search Customers",
                          border: InputBorder.none),
                    ),
                  ),
                  Icon(Icons.add)
                ]),
          ),
          Image(image: AssetImage("assets/images/customers.jpg")),
          Container(
            height: 170,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You don't have any\ncustomers yet!",
                  style: TextStyle(color: Colors.grey.shade900, fontSize: 25),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Add or import a customer from your contacts to start\n managing their details and tracking their activity",
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
