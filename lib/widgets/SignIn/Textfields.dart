import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Textfields extends StatelessWidget {
  const Textfields({
    Key? key,
    required this.email,
    required this.password,
    required this.isdisabled,
  }) : super(key: key);

  final TextEditingController email;
  final TextEditingController password;
  final RxBool isdisabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: email,
          cursorColor: Colors.grey,
          decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue.shade900),
              ),
              floatingLabelStyle: TextStyle(color: Colors.grey, fontSize: 15),
              hoverColor: Colors.grey,
              labelText: "Email"),
          onSubmitted: (_) {},
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: password,
          obscureText: true,
          cursorColor: Colors.grey,
          decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue.shade900),
              ),
              floatingLabelStyle: TextStyle(color: Colors.grey, fontSize: 15),
              hoverColor: Colors.grey,
              labelText: "Password"),
          onChanged: (_) {
            if (password.text.length > 8) {
              isdisabled.value = false;
            } else {
              isdisabled.value = true;
            }
          },
        ),
      ],
    );
  }
}
