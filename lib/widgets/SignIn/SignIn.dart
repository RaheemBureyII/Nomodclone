// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nomodclone/appcolors.dart';
import 'package:nomodclone/widgets/SignIn/TextWidget.dart';
import 'package:nomodclone/widgets/SignIn/Textfields.dart';

class Signin extends StatelessWidget {
  Signin({Key? key}) : super(key: key);
  var isdisabled = true.obs;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgcolor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(color: textcolor2),
              ),
              Text(
                "SIGN UP",
                style:
                    TextStyle(color: textcolor2, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
        backgroundColor: bgcolor,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(),
                  SizedBox(
                    height: 60,
                  ),
                  Textfields(
                      email: email, password: password, isdisabled: isdisabled)
                ],
              ),
            ),
            Obx(
              () => MaterialButton(
                disabledColor: Colors.grey.shade200,
                height: 55,
                minWidth: 400,
                onPressed: isdisabled == true
                    ? null
                    : () {
                        Get.toNamed("/dashboard");
                      },
                color: buttoncolor,
                child: Text(
                  "SIGN IN",
                  style: TextStyle(
                    color: isdisabled == true ? Colors.grey.shade400 : bgcolor,
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                        color: isdisabled == true
                            ? Colors.grey.shade200
                            : buttoncolor,
                        width: 1)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
