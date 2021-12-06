import 'package:flutter/material.dart';

import '../../appcolors.dart';

class SlideShowItem extends StatelessWidget {
  final String text;
  final String imagename;

  SlideShowItem({
    Key? key,
    required this.text,
    required this.imagename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TweenAnimationBuilder(
              duration: Duration(seconds: 1),
              child: Image(
                image: AssetImage("assets/images/$imagename.jpeg"),
                height: 220,
              ),
              tween: Tween<double>(begin: 0, end: 1),
              builder: (context, double val, child) {
                return Opacity(
                  opacity: val,
                  child: child,
                );
              }),
          TweenAnimationBuilder(
            duration: Duration(seconds: 1),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: textcolor1,
              ),
            ),
            tween: Tween<double>(begin: 0, end: 1),
            builder: (context, double val, child) {
              return Opacity(
                opacity: val,
                child: Padding(
                  padding: EdgeInsets.only(bottom: val * 40),
                  child: child,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
