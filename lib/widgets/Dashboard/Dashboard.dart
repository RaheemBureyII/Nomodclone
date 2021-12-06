// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:nomodclone/appcolors.dart';
import 'package:nomodclone/controllers/dashboardcontroller.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Dashboardcontroller>(
        init: Dashboardcontroller(),
        builder: (controller) {
          return Scaffold(
              backgroundColor: bgcolor,
              body: controller.pages[controller.tabindex],
              bottomNavigationBar: BottomNavigationBar(
                //selectedFontSize: 15,
                // unselectedFontSize: 15,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.grey.shade500,
                currentIndex: controller.tabindex,
                onTap: (index) {
                  //controller.tabchange(index);
                  if (index == 2) {
                    Get.generalDialog(
                        barrierColor: Colors.transparent,
                        barrierDismissible: true,
                        barrierLabel: "Label",
                        pageBuilder: (context, anim1, anim2) {
                          return Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              width: MediaQuery.of(context).size.width * 0.95,
                              height: 160,
                              child: Column(
                                children: [
                                  dialogitem(
                                    icond: Icons.credit_card,
                                    text1: "In-Person",
                                    text2:
                                        "Create a change for an in-person payment",
                                    tstyle: TextStyle(
                                        fontSize: 15,
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                    tstyle2: TextStyle(
                                        fontSize: 12,
                                        decoration: TextDecoration.none,
                                        color: Colors.grey.shade500),
                                    iconbg: Color.fromRGBO(253, 244, 249, 1),
                                    iconcol: Color.fromRGBO(221, 109, 99, 1),
                                    hgt: 50,
                                    wdh: 50,
                                    size: 30,
                                  ),
                                  Divider(color: Colors.grey),
                                  dialogitem(
                                    icond: Icons.add_link_outlined,
                                    text1: "Link",
                                    text2:
                                        "Create a payment link to be paid online",
                                    tstyle: TextStyle(
                                        fontSize: 15,
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                    tstyle2: TextStyle(
                                        fontSize: 12,
                                        decoration: TextDecoration.none,
                                        color: Colors.grey.shade500),
                                    iconbg: Colors.blue.shade200,
                                    iconcol: Colors.blue.shade800,
                                    hgt: 50,
                                    wdh: 50,
                                    size: 30,
                                  ),
                                ],
                              ),
                              margin: EdgeInsets.only(bottom: 95),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    //offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 3.0,
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          );
                        });
                  }
                  if (index == 3) {
                    controller.tabchange(3);
                  }
                  if (index == 4) {
                    controller.tabchange(4);
                  }
                  if (index == 0) {
                    controller.tabchange(0);
                  }
                  if (index == 1) {
                    controller.tabchange(1);
                  }
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.show_chart), label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.format_list_bulleted_outlined),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Image(
                        image: AssetImage("assets/images/logonomod.png"),
                        width: 50,
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.import_contacts_outlined), label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.sort_outlined), label: "")
                ],
              ));
        });
  }
}

class dialogitem extends StatelessWidget {
  final IconData icond;
  final String text1;
  final String text2;
  final TextStyle tstyle;
  final TextStyle tstyle2;
  final Color iconbg;
  final Color iconcol;
  final double hgt;
  final double wdh;
  final double size;
  dialogitem(
      {Key? key,
      required this.icond,
      required this.text1,
      required this.text2,
      required this.tstyle,
      required this.tstyle2,
      required this.iconbg,
      required this.iconcol,
      required this.hgt,
      required this.wdh,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          height: hgt,
          width: wdh,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: iconbg),
          child: Icon(
            icond,
            color: iconcol,
            size: size,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: tstyle,
            ),
            Text(text2, style: tstyle2)
          ],
        )
      ],
    );
  }
}
