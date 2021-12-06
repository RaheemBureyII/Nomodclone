import 'package:flutter/material.dart';
import 'package:nomodclone/appcolors.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome back!",
          style: TextStyle(color: Colors.grey.shade900, fontSize: 30),
        ),
        SizedBox(
          height: 10,
        ),
        RichText(
          // ignore: prefer_const_constructors
          text: TextSpan(
              text:
                  "Sign in to your Nomod account using your work email\naddress and your secure password.Forgetten it?",
              style: TextStyle(color: textcolor2, fontSize: 14),
              children: [
                TextSpan(
                  text: " RESET\nPASSWORD",
                  style: TextStyle(
                    color: Colors.grey.shade900,
                    fontSize: 14,
                  ),
                )
              ]),
        ),
      ],
    );
  }
}
