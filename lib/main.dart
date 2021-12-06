// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nomodclone/widgets/Dashboard/Dashboard.dart';
import 'package:nomodclone/widgets/GettingStarted/GettingStarted.dart';
import 'package:nomodclone/widgets/SignIn/SignIn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => GettingStarted()),
        GetPage(name: "/signin", page: () => Signin()),
        GetPage(name: "/dashboard", page: () => Dashboard()),
      ],
    );
  }
}
