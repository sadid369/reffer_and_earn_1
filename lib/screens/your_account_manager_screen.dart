// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:reffer_and_earn_1/common/constants.dart';

import '../common/app_image.dart';

class YourAccountManagerScreen extends StatelessWidget {
  const YourAccountManagerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(yourAccountManagerScreen),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          card(
            width: width,
            number: '01',
          ),
          Container(
            margin: EdgeInsets.all(width * 0.022),
            child: Text(
              'My Direct Card Network',
              style: TextStyle(
                fontSize: width * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(width * 0.022),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(width * 0.008),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                  )),
                  child: Text(
                    'Non-Card Mem.',
                    style: TextStyle(
                      fontSize: width * 0.036,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(width * 0.008),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                  )),
                  child: Text(
                    'Card Member',
                    style: TextStyle(
                      fontSize: width * 0.036,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(width * 0.008),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                  )),
                  child: Text(
                    'Credit Coin',
                    style: TextStyle(
                      fontSize: width * 0.036,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(width * 0.008),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                  )),
                  child: Text(
                    'Lifeline Coin',
                    style: TextStyle(
                      fontSize: width * 0.036,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(width * 0.022),
            child: Column(
              children: [
                heading(
                  width: width,
                  level: '1',
                  teamSize: '3',
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(width * 0.015)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: width * 0.2,
                        alignment: Alignment.center,
                        child: Text(
                          '10',
                          style: TextStyle(
                            fontSize: width * 0.03,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.2,
                        alignment: Alignment.center,
                        child: Text(
                          '43',
                          style: TextStyle(
                            fontSize: width * 0.03,
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.2,
                        alignment: Alignment.center,
                        child: Text(
                          '50',
                          style: TextStyle(
                            color: Color(0xffF2AC2D),
                            fontSize: width * 0.03,
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.2,
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              '3000',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.03,
                              ),
                            ),
                            Text(
                              '(Lifeline Cash)',
                              style: TextStyle(
                                fontSize: width * 0.025,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                heading(
                  width: width,
                  level: '2',
                  teamSize: '1',
                ),
                dataRow(
                  width: width,
                  nonCardMember: '00',
                  cardMember: '143',
                  creditCoin: '1500',
                  lifeLineCoin: '30',
                ),
                heading(
                  width: width,
                  level: '3',
                  teamSize: '0',
                ),
                dataRow(
                  width: width,
                  nonCardMember: '00',
                  cardMember: '1143',
                  creditCoin: '13000',
                  lifeLineCoin: '130',
                ),
                heading(
                  width: width,
                  level: '4',
                  teamSize: '0',
                ),
                dataRow(
                  width: width,
                  nonCardMember: '00',
                  cardMember: '11043',
                  creditCoin: '30230',
                  lifeLineCoin: '3130',
                ),
                heading(
                  width: width,
                  level: '5',
                  teamSize: '0',
                ),
                dataRow(
                  width: width,
                  nonCardMember: '00',
                  cardMember: '11043',
                  creditCoin: '30230',
                  lifeLineCoin: '3130',
                ),
                heading(
                  width: width,
                  level: '6',
                  teamSize: '0',
                ),
                dataRow(
                  width: width,
                  nonCardMember: '00',
                  cardMember: '411043',
                  creditCoin: '130230',
                  lifeLineCoin: '13130',
                ),
                heading(
                  width: width,
                  level: '7',
                  teamSize: '0',
                ),
                dataRow(
                  width: width,
                  nonCardMember: '00',
                  cardMember: '311043',
                  creditCoin: '310230',
                  lifeLineCoin: '123130',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class dataRow extends StatelessWidget {
  const dataRow({
    Key? key,
    required this.width,
    required this.nonCardMember,
    required this.cardMember,
    required this.creditCoin,
    required this.lifeLineCoin,
  }) : super(key: key);

  final double width;
  final String nonCardMember;
  final String cardMember;
  final String creditCoin;
  final String lifeLineCoin;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(width * 0.01),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.green),
          borderRadius: BorderRadius.circular(width * 0.015)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: width * 0.2,
            alignment: Alignment.center,
            child: Text(
              nonCardMember,
              style: TextStyle(
                fontSize: width * 0.03,
                color: Colors.red,
              ),
            ),
          ),
          Container(
            width: width * 0.2,
            alignment: Alignment.center,
            child: Text(
              cardMember,
              style: TextStyle(
                fontSize: width * 0.03,
              ),
            ),
          ),
          Container(
            width: width * 0.2,
            alignment: Alignment.center,
            child: Text(
              creditCoin,
              style: TextStyle(
                color: Color(0xffF2AC2D),
                fontSize: width * 0.03,
              ),
            ),
          ),
          Container(
            width: width * 0.2,
            alignment: Alignment.center,
            child: Text(
              lifeLineCoin,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.03,
                  color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}

class heading extends StatelessWidget {
  const heading({
    Key? key,
    required this.width,
    required this.level,
    required this.teamSize,
  }) : super(key: key);

  final double width;
  final String level;
  final String teamSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: width * 0.013, top: width * 0.013),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Level $level',
            style:
                TextStyle(fontSize: width * 0.035, fontWeight: FontWeight.bold),
          ),
          Text(
            'Team Size: $teamSize',
            style:
                TextStyle(fontSize: width * 0.035, fontWeight: FontWeight.bold),
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
