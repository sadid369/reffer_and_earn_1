// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:reffer_and_earn_1/common/constants.dart';

import '../common/app_image.dart';

class MyLevelScreen extends StatelessWidget {
  const MyLevelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(myLevelScreen),
      // ),
      body: Container(
        width: width,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff1E225F),
              Color(0xff4C2E50),
              Colors.black,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(width * 0.12),
              Container(
                alignment: Alignment.centerLeft,
                width: width,
                padding: EdgeInsets.only(left: width * 0.03),
                height: width * 0.08,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    Gap(width * 0.28),
                    Text(
                      'My Level',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              // Gap(width * 0.1),
              Container(
                height: width * 0.9,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.transparent,
                )),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: width * 0.06,
                      left: width * 0.04,
                      right: width * 0.04,
                      child: Container(
                        // margin: EdgeInsets.symmetric(horizontal: width * 0.04),
                        width: width,
                        height: width * 0.65,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffD68FF9),
                              Color(0xff9F61EC),
                              // Colors.black,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(width * 0.045),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: width * 0.008,
                      left: width * 0.07,
                      right: width * 0.07,
                      child: Container(
                        width: width,
                        height: width * 0.34,
                        decoration: BoxDecoration(
                            color: Color(0xffFFBF30),
                            borderRadius: BorderRadius.circular(width * 0.035)),
                        child: Column(
                          children: [
                            Container(
                              width: width,
                              margin: EdgeInsets.symmetric(
                                  horizontal: width * 0.02,
                                  vertical: width * 0.02),
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.08,
                                vertical: width * 0.01,
                              ),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(width * 0.02),
                                color: Color(
                                  0xff4E5A24,
                                ),
                              ),
                              child: Text(
                                textAlign: TextAlign.center,
                                'Active Rewards',
                                style: TextStyle(
                                    fontSize: width * 0.05,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: width * 0.03),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: width * 0.06,
                                        child: Image.asset(
                                          AppImage.levelOnePic,
                                        ),
                                      ),
                                      Gap(width * 0.02),
                                      Text(
                                        'No Active Rewards',
                                        style: TextStyle(
                                          color: Color(
                                            0xff4E5A24,
                                          ),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: width * 0.02),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.02,
                                      vertical: width * 0.002,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(width * 0.04),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                    child: Text(
                                      'claim Now',
                                      style: TextStyle(
                                        fontSize: width * 0.036,
                                        fontWeight: FontWeight.bold,
                                        color: Color(
                                          0xff4E5A24,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Gap(width * 0.008),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: width * 0.03),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: width * 0.06,
                                        child: Image.asset(
                                          AppImage.levelOnePic,
                                        ),
                                      ),
                                      Gap(width * 0.02),
                                      Text(
                                        'No Active Rewards',
                                        style: TextStyle(
                                          color: Color(
                                            0xff4E5A24,
                                          ),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: width * 0.02),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.02,
                                      vertical: width * 0.002,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(width * 0.04),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                    child: Text(
                                      'claim Now',
                                      style: TextStyle(
                                        fontSize: width * 0.036,
                                        fontWeight: FontWeight.bold,
                                        color: Color(
                                          0xff4E5A24,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Gap(width * 0.008),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: width * 0.03),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: width * 0.06,
                                        child: Image.asset(
                                          AppImage.levelOnePic,
                                        ),
                                      ),
                                      Gap(width * 0.02),
                                      Text(
                                        'No Active Rewards',
                                        style: TextStyle(
                                          color: Color(
                                            0xff4E5A24,
                                          ),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: width * 0.02),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.02,
                                      vertical: width * 0.002,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(width * 0.04),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                    child: Text(
                                      'claim Now',
                                      style: TextStyle(
                                        fontSize: width * 0.036,
                                        fontWeight: FontWeight.bold,
                                        color: Color(
                                          0xff4E5A24,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: width * 0.37,
                      left: width * 0.05,
                      right: width * 0.05,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.08,
                          vertical: width * 0.01,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width * 0.03),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff5270FF),
                              Color(0xffFE66C5),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Text(
                          'Get 77 Lifeline coin more to level up',
                          style: TextStyle(
                            fontSize: width * 0.044,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: width * 0.51,
                      left: width * 0.2,
                      right: width * 0.18,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.08,
                          vertical: width * 0.01,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width * 0.03),
                            color: Colors.white),
                      ),
                    ),
                    Positioned(
                      bottom: width * 0.47,
                      left: width * 0.01,
                      right: width * 0.01,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.08,
                          vertical: width * 0.01,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width * 0.03),
                          color: Colors.transparent,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Lv0',
                              style: TextStyle(
                                fontSize: width * 0.05,
                                color: Colors.white,
                              ),
                            ),
                            Image.asset(
                              AppImage.levelOnePic,
                            ),
                            Image.asset(
                              AppImage.levelLockPic,
                            ),
                            Image.asset(
                              AppImage.levelLockPic,
                            ),
                            Image.asset(
                              AppImage.levelLockPic,
                            ),
                            Image.asset(
                              AppImage.levelLockPic,
                            ),
                            Image.asset(
                              AppImage.levelLockPic,
                            ),
                            Image.asset(
                              AppImage.levelLockPic,
                            ),
                            Text(
                              'Lv1',
                              style: TextStyle(
                                fontSize: width * 0.05,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: width * 0.05,
                      left: width * 0.1,
                      right: width * 0.1,
                      child: Image.asset(
                        AppImage.bannerPic,
                      ),
                    ),
                    Positioned(
                      top: width * 0.15,
                      left: width * 0.448,
                      right: width * 0.448,
                      child: Container(
                        child: Text(
                          'Freelance \nMarketing \nAssociate',
                          style: TextStyle(
                            fontSize: width * 0.02,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: width * 0.02),
                child: Text(
                  'Level Rule',
                  style: TextStyle(color: Colors.white, fontSize: width * 0.05),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.03),
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.02, vertical: width * 0.02),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width * 0.04),
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Level',
                      style: TextStyle(
                          color: Colors.white, fontSize: width * 0.05),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.04, vertical: width * 0.01),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width * 0.05),
                        color: Colors.black,
                      ),
                      child: Text(
                        'Lifeline Coin',
                        style: TextStyle(
                            color: Colors.white, fontSize: width * 0.03),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: width * 0.75,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    levelCard(
                      width: width,
                      levelNumber: '1',
                      levelName: 'Freelance Brand ambassador',
                      levelCoin: '100',
                      color: Color(0xffFFBF30),
                    ),
                    levelCard(
                      width: width,
                      levelNumber: '2',
                      levelName: 'Freelance Brand ambassador',
                      levelCoin: '500',
                      color: Color(0xffFFBD59),
                    ),
                    levelCard(
                      width: width,
                      levelNumber: '3',
                      levelName: 'Freelance Brand ambassador',
                      levelCoin: '1000',
                      color: Color(0xff4E5A24),
                    ),
                    levelCard(
                      width: width,
                      levelNumber: '4',
                      levelName: 'Freelance Brand ambassador',
                      levelCoin: '2000',
                      color: Color(0xffF46E3D),
                    ),
                    levelCard(
                      width: width,
                      levelNumber: '5',
                      levelName: 'Freelance Senior Marketing',
                      levelCoin: '5000',
                      color: Color(0xffF5120D),
                    ),
                    levelCard(
                      width: width,
                      levelNumber: '6',
                      levelName: 'District Marketing Manager',
                      levelCoin: '10000',
                      color: Color(0xff066907),
                    ),
                    levelCard(
                      width: width,
                      levelNumber: '7',
                      levelName: 'General Marketing Manager',
                      levelCoin: '50000',
                      color: Color(0xff0D4D03),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class levelCard extends StatelessWidget {
  final double width;
  final String levelNumber;
  final String levelName;
  final String levelCoin;
  final Color color;
  const levelCard({
    Key? key,
    required this.width,
    required this.levelNumber,
    required this.levelName,
    required this.levelCoin,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: width * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: width * 0.5,
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.04, vertical: width * 0.01),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width * 0.015),
              color: color,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '${levelNumber})',
                  style:
                      TextStyle(color: Colors.white, fontSize: width * 0.028),
                ),
                Gap(width * 0.01),
                Text(
                  levelName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.028,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width * 0.45,
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.08, vertical: width * 0.01),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width * 0.015),
              color: color,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  levelCoin,
                  style: TextStyle(color: Colors.white, fontSize: width * 0.03),
                ),
                SizedBox(
                  width: width * 0.037,
                  child: Image.asset(AppImage.crownIcon),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: width * 0.037,
                  // color: C,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
