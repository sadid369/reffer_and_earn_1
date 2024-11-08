// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:reffer_and_earn_1/common/color_converter.dart';

import '../common/app_image.dart';

class MyBonus extends StatefulWidget {
  const MyBonus({super.key});

  @override
  State<MyBonus> createState() => _MyBonusState();
}

class _MyBonusState extends State<MyBonus> {
  @override
  void initState() {
    super.initState();
    // popup();
  }

  Future<Null> popup() {
    return Future.delayed(
      Duration.zero,
      () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            final width = MediaQuery.of(context).size.width;
            // final height = MediaQuery.of(context).size.height;
            return SafeArea(
              child: Container(
                padding: EdgeInsets.all(width * 0.02),
                child: Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(width * 0.05),
                    ),
                  ),
                  child: Container(
                    height: width * 1.3,
                    width: width * 0.8,
                    padding: EdgeInsets.all(width * 0.03),
                    child: Stack(
                      children: [
                        Positioned(
                          top: width * 0.005,
                          right: width * 0.005,
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.close,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: width * 0.3,
                          right: width * 0.02,
                          left: width * 0.02,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Gap(width * 0.01),
                              Image.asset(AppImage.bigCoinPic),
                              Gap(width * 0.02),
                              Text(
                                textAlign: TextAlign.center,
                                "Active Wallet to \naccess Refer & Earn",
                                style: TextStyle(
                                  fontSize: width * 0.06,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Gap(width * 0.1),
                              Container(
                                alignment: Alignment.center,
                                width: width * 0.6,
                                height: width * 0.1,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(width * 0.05),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffCD3A5F),
                                      Color(0xffF2696B),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Text(
                                  'Activate Wallet',
                                  style: TextStyle(
                                    color: Colors.white,
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
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage.bg),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: width,
                  // height: double.infinity,
                  padding: EdgeInsets.only(left: width * 0.03),
                  height: width * 0.08,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back_ios),
                      ),
                      Text(
                        'My Bonus',
                        style: TextStyle(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                //Main Banner
                Container(
                  width: width,
                  height: height * 0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        AppImage.newCard,
                      ),
                    ),
                  ),
                ),
                // 343777
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: width * 0.02,
                    horizontal: width * 0.01,
                  ),
                  width: width,
                  height: height * 0.1,
                  decoration: BoxDecoration(
                    // color: ColorConverter.stringToColor('#FFF0A3'),
                    borderRadius: BorderRadius.circular(width * 0.02),
                    gradient: LinearGradient(colors: [
                      ColorConverter.stringToColor('#72BF78'),
                      ColorConverter.stringToColor('#FEFF9F'),
                    ]),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: width * 0.02, horizontal: width * 0.02),
                        width: width * 0.47,
                        height: height * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width * 0.02),
                          color: ColorConverter.stringToColor('#72BF78'),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '777',
                              style: TextStyle(
                                fontSize: width * 0.035,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Your Bonus coin',
                              style: TextStyle(
                                fontSize: width * 0.035,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: width * 0.02),
                        width: width * 0.47,
                        height: height * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width * 0.02),
                          color: ColorConverter.stringToColor('#A0D683'),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '123',
                              style: TextStyle(
                                fontSize: width * 0.035,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Pending Bonus coin',
                              style: TextStyle(
                                fontSize: width * 0.035,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: width * 0.03, vertical: width * 0.00),
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05,
                    vertical: width * 0.00,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Learn More My Bonus',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: width * 0.055,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width * 0.9,
                  height: height * 0.22,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AppImage.moreBonus,
                    ),
                  )),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: width * 0.03, vertical: width * 0.00),
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05,
                    vertical: width * 0.00,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Learn More My Bonus',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: width * 0.055,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width * 0.9,
                  height: height * 0.22,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AppImage.shoppingOnline,
                    ),
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container mainBanner(double width) {
    return Container(
      alignment: Alignment.centerLeft,
      width: width,
      // padding: EdgeInsets.only(left: width * 0.03),
      height: width * 0.95,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xffADAAAA))),
      ),
      child: Stack(
        children: [
          Positioned(
            top: width * 0.0,
            child: Container(
              width: width,
              height: width * 0.6,
              decoration: const BoxDecoration(
                color: Color(0xffD0F1FF),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Make your shopping free',
                    style: TextStyle(
                      fontSize: width * 0.06,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Earn 1000 Lifeline Cash on each Referral',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.035,
                    ),
                  ),
                  SizedBox(
                    width: width,
                    height: width * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        circularCard(
                          width: width,
                          image: AppImage.notifiersPic,
                          title: 'Invite a friend and family',
                        ),
                        SizedBox(
                          width: width * 0.1,
                          child: Image.asset(AppImage.arrowForwardPic),
                        ),
                        circularCard(
                          width: width,
                          image: AppImage.creditCardSmallPic,
                          title: 'Friend activate VIP Membership',
                        ),
                        SizedBox(
                            width: width * 0.1,
                            child: Image.asset(AppImage.arrowForwardPic)),
                        circularCard(
                          width: width,
                          image: AppImage.walletNewPic,
                          title: 'Get 1000 Lifeline Cash on each Referral',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: width * 0.015,
            right: width * 0.02,
            left: width * 0.02,
            child: Container(
              width: width * 0.8,
              height: width * 0.4,
              padding: EdgeInsets.all(width * 0.01),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  width * 0.03,
                ),
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    width: width * 0.1,
                                    height: width * 0.16,
                                    child: Image.asset(AppImage.trophyPic)),
                                Gap(width * 0.013),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'You earn',
                                      style: TextStyle(
                                        fontSize: width * 0.035,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          '1000 ',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                        Text('Lifeline Cash')
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              width: width * 0.4,
                              child: Text(
                                textAlign: TextAlign.start,
                                'Use Lifeline Cash as Real Cash to shop on Everywhere...',
                                style: TextStyle(
                                    fontSize: width * 0.027,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(
                                      0xff85879E,
                                    )),
                              ),
                            )
                          ],
                        ),
                        const VerticalDivider(
                          color: Color(0xffD9D9D9),
                          thickness: 1,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: width * 0.15,
                                  height: width * 0.16,
                                  child: Image.asset(
                                    AppImage.giftCardIcon,
                                  ),
                                ),
                                Gap(width * 0.01),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'You Friend Get',
                                      style: TextStyle(
                                        fontSize: width * 0.035,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          '1',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                        Text('Gift Card')
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              width: width * 0.45,
                              child: Text(
                                textAlign: TextAlign.start,
                                'Use Lifeline Cash as Real Cash to shop on LifeLineKart...',
                                style: TextStyle(
                                    fontSize: width * 0.027,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(
                                      0xff85879E,
                                    )),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(width * 0.015),
                    width: width,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    child: Text(
                      textAlign: TextAlign.center,
                      'Use Lifeline Cash as Real Cash to shop on Everywhere...',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 235, 211, 94),
                        fontSize: width * 0.03041,
                        fontWeight: FontWeight.bold,
                      ),
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

class levelCard extends StatelessWidget {
  final double width;
  final String trophyImage;
  final String levelImage;
  const levelCard({
    super.key,
    required this.width,
    required this.trophyImage,
    required this.levelImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(width * 0.01),
      decoration: BoxDecoration(
          // border: Border.all(color: Colors.black),
          ),
      width: width * 0.08,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: width * 0.2,
            child: Image.asset(trophyImage),
          ),
          Image.asset(
            levelImage,
          )
        ],
      ),
    );
  }
}

class circularCard extends StatelessWidget {
  final String image;
  final String title;
  const circularCard({
    super.key,
    required this.image,
    required this.title,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.25,
      height: width * 0.36,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffBAEBFF),
              ),
              width: width * 0.22,
              height: width * 0.22,
              child: Container(
                margin: EdgeInsets.all(width * 0.04),
                width: width * 0.3,
                height: width * 0.3,
                child: Image.asset(
                  image,
                  width: 120,
                  height: 120,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(
            width: width * 0.25,
            child: Text(
              textAlign: TextAlign.center,
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
