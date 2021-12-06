import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../appcolors.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                height: 55,
                minWidth: 180,
                onPressed: () {
                  Get.toNamed("/signin");
                },
                child: Text("SIGN IN"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: Colors.black, width: 1)),
              ),
              MaterialButton(
                height: 55,
                minWidth: 180,
                onPressed: () {},
                color: buttoncolor,
                child: Text(
                  "SIGN UP",
                  style: TextStyle(color: bgcolor),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: buttoncolor, width: 1)),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Received an invite?",
                style: TextStyle(color: Colors.grey[700]),
              ),
              Text(
                "JOIN TEAM",
                style: TextStyle(
                    color: Colors.grey[700], fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
