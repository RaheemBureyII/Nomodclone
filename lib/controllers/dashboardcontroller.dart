import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nomodclone/widgets/Dashboard/bottomnavwidgets/activities.dart';
import 'package:nomodclone/widgets/Dashboard/bottomnavwidgets/customers.dart';
import 'package:nomodclone/widgets/Dashboard/bottomnavwidgets/info.dart';
import 'package:nomodclone/widgets/Dashboard/bottomnavwidgets/middlebutton.dart';
import 'package:nomodclone/widgets/Dashboard/bottomnavwidgets/stats.dart';

class Dashboardcontroller extends GetxController {
  var tabindex = 0;
  void tabchange(int index) {
    tabindex = index;
    update();
  }

  List<Widget> pages = [
    Stats(),
    Activites(),
    MiddleButton(),
    Customers(),
    Info()
  ];
}
