import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Statscontroller extends GetxController {
  var slideindex = 0.obs;
  //List<Widget> pages = [Statscreen1(), Statscreen2()];
  void slidechange(int index) {
    slideindex.value = index;
    update();
  }
}
