import 'package:flutter/material.dart';
import 'package:reffer_and_earn_1/common/constants.dart';

import '../common/app_image.dart';

class LevelVipScreen extends StatelessWidget {
  const LevelVipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(levelVipScreen),
      ),
      body: Column(
        children: [
          Container(
            width: width,
            margin: EdgeInsets.all(width * 0.022),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(
                width * 0.03,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: width * 0.2,
                      child: Image.asset(
                        AppImage.profileImageIcon,
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
                            width: width * 0.17,
                            height: width * 0.17,
                            decoration: BoxDecoration(
                              color: Color(0xff46BD49),
                            ),
                            child: Text(
                              '01',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 0.1,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          height: width * 0.09,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffA7A7A7),
                                Color(0xffFEFEFE),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(3),
                                child: Text(
                                  'VIP Member',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: width * 0.03,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
