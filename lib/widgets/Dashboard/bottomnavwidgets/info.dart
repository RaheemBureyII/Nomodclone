// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nomodclone/widgets/Dashboard/Dashboard.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          dialogitem(
              icond: Icons.face,
              text1: "Raheem Burey",
              text2: "Raheemburey2.0.1@gmail.com",
              tstyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              tstyle2: TextStyle(color: Colors.grey.shade500),
              iconbg: Colors.blue.shade200,
              iconcol: Colors.blue.shade700,
              hgt: 60,
              wdh: 60,
              size: 40),
          Boldtext(
            text: "ACCOUNT",
          ),
          IconText(
            text: "Personal",
            icon: Icons.person_pin_outlined,
          ),
          IconText(
            text: "Identity Verification",
            icon: Icons.shield_outlined,
          ),
          Boldtext(
            text: "BUSINESS",
          ),
          IconText(
            text: "Details",
            icon: Icons.cases_outlined,
          ),
          IconText(
            text: "Balance",
            icon: Icons.money,
          ),
          IconText(text: "Connect", icon: Icons.receipt_long_outlined),
          IconText(
            text: "Payouts",
            icon: Icons.payments_outlined,
          ),
          IconText(text: "Taxes", icon: Icons.money_off_csred_outlined),
          IconText(
            text: "Team",
            icon: Icons.group,
          ),
          Boldtext(
            text: "REFERRAL",
          ),
          IconText(
            text: "Send USD 50 and earn USD 50",
            icon: Icons.local_atm_outlined,
          ),
          Boldtext(
            text: "SUPPORT",
          ),
          IconText(
            text: "Help",
            icon: Icons.help_outline,
          ),
          Boldtext(
            text: "NOMOD",
          ),
          IconText(
            text: "About",
            icon: Icons.info_outline,
          ),
          IconText(
            text: "Terms of Service",
            icon: Icons.gavel_outlined,
          ),
          IconText(
            text: "Privacy",
            icon: Icons.visibility_off_outlined,
          ),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 1, color: Colors.grey.shade500))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Sign Out",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final String text;
  final IconData icon;
  const IconText({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      decoration: BoxDecoration(
          border:
              Border(top: BorderSide(width: 1, color: Colors.grey.shade500))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 15, color: Colors.grey.shade800),
          ),
          Icon(icon)
        ],
      ),
    );
  }
}

class Boldtext extends StatelessWidget {
  final String text;
  const Boldtext({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.grey.shade900,
            fontWeight: FontWeight.w600,
            fontSize: 15),
      ),
    );
  }
}
