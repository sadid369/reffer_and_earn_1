// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:reffer_and_earn_1/common/constants.dart';

import '../common/app_image.dart';

class LevelTwoVipScreen extends StatelessWidget {
  const LevelTwoVipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(levelTwoVipScreen),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              height: width * 0.1,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Color(0xffFFFAF9)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Leval 2 Team',
                    style: TextStyle(
                        fontSize: width * 0.04, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(width * 0.008),
                    decoration: BoxDecoration(
                      color: Color(0xffFEFDF1),
                      // border: Border.all(color: Colors.black),
                      // borderRadius: BorderRadius.circular(width * 0.03),
                    ),
                    child: Text('Team size :- 75'),
                  ),
                ],
              ),
            ),
            card(
              width: width,
            ),
            card(
              width: width,
            ),
            card(
              width: width,
            ),
            card(
              width: width,
            ),
            card(
              width: width,
            ),
            card(
              width: width,
            ),
          ],
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  const card({
    super.key,
    required this.width,
  });

  final double width;

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
        color: Color(
          0xffEBBC2E,
        ),
      ),
      child: Column(
        children: [
          Text(
            'Team Leader : Satish Jaywant KadamTeam',
            style: TextStyle(
              fontSize: width * 0.04,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.2,
                child: Image.asset(
                  AppImage.profileImageYellowIcon,
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
              Column(
                children: [
                  ClipOval(
                    child: Container(
                      alignment: Alignment.center,
                      width: width * 0.14,
                      height: width * 0.14,
                      decoration: const BoxDecoration(
                        color: Color(0xff46BD49),
                      ),
                      child: Image.asset(AppImage.crownImage),
                    ),
                  ),
                  Gap(width * 0.01),
                  Container(
                    height: width * 0.07,
                    margin: EdgeInsets.only(
                      right: width * 0.013,
                      bottom: width * 0.015,
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
                        'VIP Member',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: width * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
