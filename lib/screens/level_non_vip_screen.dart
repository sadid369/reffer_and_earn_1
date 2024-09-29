// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:reffer_and_earn_1/common/constants.dart';

import '../common/app_image.dart';

class LevelNonVipScreen extends StatelessWidget {
  const LevelNonVipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(levelNonVipScreen),
      ),
      body: Column(
        children: [
          Container(
            width: width,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Color(0xffFFFAF9)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Leval 1 Team',
                  style: TextStyle(fontSize: width * 0.04),
                ),
                Container(
                  padding: EdgeInsets.all(width * 0.008),
                  decoration: BoxDecoration(
                    color: Color(0xffFEFDF1),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(width * 0.03),
                  ),
                  child: Text('Team size :- 75'),
                ),
                Image.asset(AppImage.networkIcon),
                Text(
                  'Team Message',
                  style: TextStyle(fontSize: width * 0.04),
                ),
              ],
            ),
          ),
          card(
            width: width,
            number: '01',
          ),
          card(
            width: width,
            number: '02',
          ),
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
      padding: EdgeInsets.only(top: width * 0.02),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(
            width * 0.03,
          ),
          color: Color(0xffFFDDD0)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.2,
                child: Image.asset(
                  AppImage.profileImagePinkIcon,
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
                    'Total card Member : 75Joining',
                    style: TextStyle(fontSize: width * 0.03),
                  ),
                  Text(
                    'Total Noncard Member : 177',
                    style: TextStyle(fontSize: width * 0.03),
                  ),
                ],
              ),
              Container(
                height: width * 0.07,
                margin: EdgeInsets.only(
                  right: width * 0.013,
                ),
                padding: EdgeInsets.all(width * 0.008),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffA7A7A7),
                      Color(0xffFEFEFE),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(
                    width * 0.04,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(width * 0.008),
                  child: Text(
                    'Non VIP Member',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: width * 0.025,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: width * 0.015),
            width: width,
            decoration: BoxDecoration(
              color: const Color(
                0xffFFBDA5,
              ),
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  width * 0.03,
                ),
                topRight: Radius.circular(
                  width * 0.03,
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(width * 0.008),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Chat this member',
                    style: TextStyle(
                      fontSize: width * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.1,
                        child: Image.asset(AppImage.phoneIcon),
                      ),
                      SizedBox(
                        width: width * 0.1,
                        child: Image.asset(AppImage.whatsAppIcon),
                      ),
                      SizedBox(
                        width: width * 0.1,
                        child: Image.asset(AppImage.messageIcon),
                      ),
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
