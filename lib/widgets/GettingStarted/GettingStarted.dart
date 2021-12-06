// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:nomodclone/appcolors.dart';
import 'package:nomodclone/widgets/GettingStarted/SlideShowItem.dart';

import 'Buttons.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 55),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/images/logonomod.png"),
                  width: 50,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "nomod",
                  style: TextStyle(
                    fontFamily: "MuseoModerno",
                    fontSize: 40,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Container(
                  child: ImageSlideshow(
                      isLoop: true,
                      autoPlayInterval: 3000,
                      indicatorColor: Colors.grey.shade900,
                      height: MediaQuery.of(context).size.height * 0.50,
                      children: [
                        SlideShowItem(
                          text: "Accept Card payments \n    anytime, anywhere",
                          imagename: "acceptedcard",
                        ),
                        SlideShowItem(
                          text: "Accept Visa, Mastercard,\n      Amex and more",
                          imagename: "acceptvisa",
                        ),
                        SlideShowItem(
                          text: "Charge in over 135 \n       currencies",
                          imagename: "chargeover",
                        ),
                        SlideShowItem(
                          text: "Fast payouts in a \n       few days",
                          imagename: "pricing",
                        ),
                        SlideShowItem(
                          text: "Beautifully simple pricing",
                          imagename: "pricing",
                        ),
                      ]),
                ),
                SizedBox(
                  height: 30,
                ),
                Buttons(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
