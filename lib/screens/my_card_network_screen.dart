// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:reffer_and_earn_1/common/constants.dart';

import '../common/app_image.dart';

class MyCardNetworkScreen extends StatelessWidget {
  const MyCardNetworkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(myCardNetworkScreen),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: width,
            padding: EdgeInsets.only(left: width * 0.03),
            height: width * 0.1,
            decoration: BoxDecoration(
              color: Color(0xffE5F1D9),
            ),
            child: Text(
              'My Card Network',
              style: TextStyle(
                  fontSize: width * 0.04, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: width,
            margin: EdgeInsets.only(top: width * 0.01),
            padding: EdgeInsets.only(left: width * 0.02),
            height: width * 0.1,
            decoration: const BoxDecoration(
              color: Color(0xffFFFEEF),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(width * 0.01),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(width * 0.02),
                    color: Colors.white,
                  ),
                  child: Text(
                    'Total card Member : 75',
                    style: TextStyle(
                        fontSize: width * 0.03, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(width * 0.01),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(width * 0.02),
                    color: Colors.white,
                  ),
                  child: Text(
                    'Total Noncard Member : 75',
                    style: TextStyle(
                        fontSize: width * 0.03, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          codeCard(
            width: width,
            hintText: 'Enter Referral Code',
            buttonText: 'Update code',
            backgroundColor1: const Color(0xffD9FFB3),
            gradient: false,
          ),
          codeCard(
            width: width,
            hintText: '91212110',
            buttonText: 'Verify code',
            backgroundColor1: const Color(0xffA6A6A6),
            backgroundColor2: Colors.white,
            gradient: true,
          ),
          card(
            width: width,
            number: '01',
          ),
        ],
      ),
    );
  }
}

class codeCard extends StatelessWidget {
  const codeCard({
    Key? key,
    required this.width,
    required this.hintText,
    required this.buttonText,
    this.backgroundColor1,
    this.backgroundColor2,
    required this.gradient,
  }) : super(key: key);

  final double width;
  final String hintText;
  final String buttonText;
  final Color? backgroundColor1;
  final Color? backgroundColor2;
  final bool gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width * 0.2,
      margin: EdgeInsets.only(top: width * 0.01),
      padding: EdgeInsets.only(left: width * 0.02),
      decoration: BoxDecoration(
        color: backgroundColor1,
        gradient: gradient
            ? LinearGradient(
                colors: [
                  backgroundColor1!,
                  backgroundColor2!,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(bottom: width * 0.01, left: width * 0.05),
            child: Text(
              'Enter Your Account Manager Code',
              style: TextStyle(
                fontSize: width * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: width * 0.5,
                  height: width * 0.08,
                  padding: EdgeInsets.all(width * 0.01),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(width * 0.02),
                    color: Color(0xffE5F1D9),
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      hintText: hintText,
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  )),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      AlertDialog(
                        title: Text('Reset settings?'),
                        content: Text(
                            'This will reset your device to its default factory settings.'),
                        actions: [
                          ElevatedButton(onPressed: () {}, child: Text('ok')),
                          ElevatedButton(onPressed: () {}, child: Text('ok'))
                        ],
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05,
                        vertical: width * 0.01,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(width * 0.02),
                        color: Color(0xffE5F1D9),
                      ),
                      child: Text(
                        buttonText,
                        style: TextStyle(
                          fontSize: width * 0.03,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff066917),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(right: width * 0.03),
                child: Text(
                  '(Note: code is onetime update only)',
                  style: TextStyle(
                    fontSize: width * 0.025,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class card extends StatelessWidget {
  const card({
    super.key,
    required this.width,
    required this.number,
  });

  final double width;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.all(width * 0.022),
      // padding: EdgeInsets.only(top: width * 0.02),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          // border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(
            width * 0.03,
          ),
          color: Color(0xffD9FFB3)),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.05, vertical: width * 0.015),
            width: width,
            decoration: BoxDecoration(
              color: const Color(
                0xffFEBF2C,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  width * 0.03,
                ),
                topRight: Radius.circular(
                  width * 0.03,
                ),
              ),
            ),
            child: Text(
              'Your Account Manager',
              style: TextStyle(
                fontSize: width * 0.05,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: width * 0.2,
                child: Image.asset(
                  AppImage.profileImageGreenIcon,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name    : SATISH JAYWANT KADAM',
                    style: TextStyle(fontSize: width * 0.03),
                  ),
                  Text(
                    'Joining Date: 14/March/1992',
                    style: TextStyle(fontSize: width * 0.03),
                  ),
                  Text(
                    'Total card Member : 75',
                    style:
                        TextStyle(fontSize: width * 0.03, color: Colors.green),
                  ),
                  Text(
                    'Total Noncard Member : 177',
                    style: TextStyle(fontSize: width * 0.03, color: Colors.red),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: width * 0.92,
            child: DottedLine(
              lineThickness: width * 0.004,
            ),
          ),
          Container(
            margin: EdgeInsets.all(width * 0.01),
            padding: EdgeInsets.only(left: width * 0.01),
            width: width,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(width * 0.03),
            ),
            child: Padding(
              padding: EdgeInsets.all(width * 0.008),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Connect Your Account Manager',
                    style: TextStyle(
                      fontSize: width * 0.034,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: width * 0.08,
                          child: Image.asset(AppImage.phoneIcon2),
                        ),
                        SizedBox(
                          width: width * 0.08,
                          child: Image.asset(AppImage.messageIcon2),
                        ),
                        SizedBox(
                          width: width * 0.08,
                          child: Image.asset(AppImage.whatsAppIcon2),
                        ),
                      ],
                    ),
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
