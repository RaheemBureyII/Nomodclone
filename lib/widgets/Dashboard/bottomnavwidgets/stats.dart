// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:nomodclone/controllers/statscontroller.dart';
import 'package:nomodclone/widgets/Dashboard/Dashboard.dart';

class Stats extends StatelessWidget {
  Stats({Key? key}) : super(key: key);
  final scontroller = Get.put(Statscontroller());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 40, bottom: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                dialogitem(
                  icond: Icons.storefront_outlined,
                  text1: "Hi Raheem",
                  text2: "Raheem",
                  tstyle: TextStyle(
                      fontSize: 12,
                      decoration: TextDecoration.none,
                      color: Colors.grey.shade500),
                  tstyle2: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      color: Colors.black),
                  iconbg: Colors.blue.shade200,
                  iconcol: Colors.blue.shade800,
                  hgt: 30,
                  wdh: 30,
                  size: 20,
                ),
                GetBuilder<Statscontroller>(builder: (controller) {
                  return Row(
                    children: [
                      Container(
                        height: 2,
                        width: 12,
                        color: controller.slideindex.value == 0
                            ? Colors.blue.shade900
                            : Colors.blue.shade100,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 2,
                        width: 12,
                        color: controller.slideindex.value == 1
                            ? Colors.blue.shade900
                            : Colors.blue.shade100,
                      ),
                    ],
                  );
                }),
                SizedBox(
                  width: 3,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300),
                  child: Center(
                      child: Text(
                    "A",
                    style: TextStyle(fontSize: 15),
                  )),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.only(left: 0, right: 0),
                width: double.infinity,
                child: PageView(
                  children: [Statscreen1(), Statscreen2()],
                  onPageChanged: (int index) {
                    scontroller.slidechange(index);
                  },
                )),
          )
        ],
      ),
    );
  }
}

class Statscreen1 extends StatelessWidget {
  const Statscreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Column(
            children: [
              Text(
                "Total Volume(USD)",
                style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
              ),
              Text(
                "0.00",
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            height: 200,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                border: Border(
                    top: BorderSide(color: Colors.blue.shade900, width: 2))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Quick Charge",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 7,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: dialogitem(
                            icond: Icons.bolt,
                            text1: "50.00",
                            text2: "Usd",
                            tstyle: TextStyle(fontSize: 14),
                            tstyle2: TextStyle(fontSize: 10),
                            iconbg: Colors.blue.shade100,
                            iconcol: Colors.blue.shade900,
                            hgt: 30,
                            wdh: 30,
                            size: 20),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: dialogitem(
                            icond: Icons.bolt,
                            text1: "100.00",
                            text2: "Usd",
                            tstyle: TextStyle(fontSize: 14),
                            tstyle2: TextStyle(fontSize: 10),
                            iconbg: Colors.blue.shade100,
                            iconcol: Colors.blue.shade900,
                            hgt: 30,
                            wdh: 30,
                            size: 20),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: dialogitem(
                            icond: Icons.bolt,
                            text1: "200.00",
                            text2: "Usd",
                            tstyle: TextStyle(fontSize: 14),
                            tstyle2: TextStyle(fontSize: 10),
                            iconbg: Colors.blue.shade100,
                            iconcol: Colors.blue.shade900,
                            hgt: 30,
                            wdh: 30,
                            size: 20),
                      ),
                      Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.add,
                          color: Colors.grey.shade400,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Statscreen2 extends StatelessWidget {
  const Statscreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20),
        children: [
          Stats2item(
            icon: Icons.analytics_outlined,
            text: "Average Volume",
          ),
          Stats2item(
            icon: Icons.sync_alt_outlined,
            text: "Charges",
          ),
          Stats2item(
            icon: Icons.savings_outlined,
            text: "Tips",
          ),
          Stats2item(
            icon: Icons.local_offer_outlined,
            text: "Discounts",
          ),
          Stats2item(
            icon: Icons.money_off_csred_outlined,
            text: "Taxes",
          ),
        ],
      ),
    );
  }
}

class Stats2item extends StatelessWidget {
  final IconData icon;
  final String text;

  Stats2item({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 130,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.grey.shade500),
              SizedBox(
                width: 5,
              ),
              Text(
                text,
                style: TextStyle(color: Colors.grey.shade500),
              ),
            ],
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                border: Border(
                    top: BorderSide(color: Colors.blue.shade900, width: 2))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        "0.00",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "USD",
                        style: TextStyle(color: Colors.grey.shade500),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
