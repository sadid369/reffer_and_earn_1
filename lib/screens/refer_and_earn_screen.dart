// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:reffer_and_earn_1/common/color_converter.dart';
import 'package:glass/glass.dart';
import '../common/app_image.dart';

class ReferAndEarnScreen extends StatefulWidget {
  const ReferAndEarnScreen({super.key});

  @override
  State<ReferAndEarnScreen> createState() => _ReferAndEarnScreenState();
}

class _ReferAndEarnScreenState extends State<ReferAndEarnScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Alignment> _topAlignment;
  late Animation<Alignment> _bottomAlignment;
  Color primaryColor = Color(0xFF039D55);
  Color secondaryColor = Color(0xFF1ED7AA);

  @override
  void initState() {
    super.initState();
    // popup();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));

    _topAlignment = TweenSequence<Alignment>([
      TweenSequenceItem(
          tween: Tween<Alignment>(
              begin: Alignment.topLeft, end: Alignment.topRight),
          weight: 1),
      TweenSequenceItem(
          tween: Tween<Alignment>(
              begin: Alignment.topRight, end: Alignment.centerRight),
          weight: 1),
      TweenSequenceItem(
          tween: Tween<Alignment>(
              begin: Alignment.centerRight, end: Alignment.bottomRight),
          weight: 1),
      TweenSequenceItem(
          tween: Tween<Alignment>(
              begin: Alignment.bottomRight, end: Alignment.bottomLeft),
          weight: 1),
      TweenSequenceItem(
          tween: Tween<Alignment>(
              begin: Alignment.bottomLeft, end: Alignment.centerLeft),
          weight: 1),
      TweenSequenceItem(
          tween: Tween<Alignment>(
              begin: Alignment.centerLeft, end: Alignment.topLeft),
          weight: 1),
    ]).animate(_controller);

    _bottomAlignment = TweenSequence<Alignment>([
      TweenSequenceItem(
          tween: Tween<Alignment>(
              begin: Alignment.bottomRight, end: Alignment.bottomLeft),
          weight: 1),
      TweenSequenceItem(
          tween: Tween<Alignment>(
              begin: Alignment.bottomLeft, end: Alignment.centerLeft),
          weight: 1),
      TweenSequenceItem(
          tween: Tween<Alignment>(
              begin: Alignment.centerLeft, end: Alignment.topLeft),
          weight: 1),
      TweenSequenceItem(
          tween: Tween<Alignment>(
              begin: Alignment.topLeft, end: Alignment.topRight),
          weight: 1),
      TweenSequenceItem(
          tween: Tween<Alignment>(
              begin: Alignment.topRight, end: Alignment.centerRight),
          weight: 1),
      TweenSequenceItem(
          tween: Tween<Alignment>(
              begin: Alignment.centerRight, end: Alignment.bottomRight),
          weight: 1)
    ]).animate(_controller);

    _controller.repeat();
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
    bool effectEnabled = true;
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return Container(
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage(AppImage.bg),
            //     fit: BoxFit.fitHeight,
            //   ),
            // ),
            // padding: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: _topAlignment.value,
                    end: _bottomAlignment.value,
                    colors: [
                  // Color(0xffF99E43),
                  // Color(0xffDA2323),
                  primaryColor,
                  // secondaryColor,
                  Colors.white
                ])),
            child: SafeArea(
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        width: width,
                        padding: EdgeInsets.only(left: width * 0.03),
                        height: width * 0.08,
                        decoration: const BoxDecoration(
                            // color: Color(0xffffffff),
                            color: Colors.transparent),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: primaryColor,
                              ),
                            ),
                            Text(
                              'REEFER AND EARN',
                              style: TextStyle(
                                fontSize: width * 0.04,
                                color: primaryColor,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Main Banner
                      Container(
                        width: width,
                        height: height * 0.22,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            AppImage.mainBanner,
                          ),
                        )),
                      ),
                      // 343777
                      Container(
                        margin: EdgeInsets.symmetric(vertical: width * 0.02),
                        width: width,
                        height: height * 0.1,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: width * 0.02,
                                  horizontal: width * 0.02),
                              width: width * 0.47,
                              height: height * 0.1,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    primaryColor,
                                    secondaryColor,
                                  ],
                                ),
                                borderRadius:
                                    BorderRadius.circular(width * 0.02),
                                border: Border.all(
                                  color: primaryColor,
                                  width: 2,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '343777',
                                    style: TextStyle(
                                      fontSize: width * 0.035,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Direct Referrals Earnings',
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
                              margin:
                                  EdgeInsets.symmetric(vertical: width * 0.02),
                              width: width * 0.47,
                              height: height * 0.1,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    primaryColor,
                                    secondaryColor,
                                  ],
                                ),
                                borderRadius:
                                    BorderRadius.circular(width * 0.02),
                                border: Border.all(
                                  color: primaryColor,
                                  width: 2,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '343777',
                                    style: TextStyle(
                                      fontSize: width * 0.035,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Direct Referrals Earnings',
                                    style: TextStyle(
                                      fontSize: width * 0.035,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ).asGlass(
                        enabled: effectEnabled,
                        tintColor: Color.fromARGB(255, 167, 33, 33),
                        clipBorderRadius: BorderRadius.circular(15.0),
                      ),
                      Container(
                        width: width * 0.95,
                        height: height * 0.17,
                        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width * 0.02),
                          border: Border.all(color: primaryColor, width: 4),
                        ),
                        margin: EdgeInsets.all(width * 0.03),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: width * 0.01),
                              child: Text(
                                'Your Referral Code',
                                style: TextStyle(
                                  fontSize: width * 0.04,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'SATISH954332',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xffA2D2DF)),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                  borderSide:
                                      BorderSide(width: 1, color: primaryColor),
                                ),
                                suffixIcon: Container(
                                  alignment: Alignment.center,
                                  width: width * 0.2,
                                  height: height * 0.01,
                                  margin: EdgeInsets.all(width * 0.015),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(width * 0.03),
                                    border: Border.all(
                                        color: primaryColor, width: 4),
                                  ),
                                  child: Text(
                                    'Copy Code',
                                    style: TextStyle(
                                      fontSize: width * 0.03,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: width,
                              height: height * 0.04,
                              margin: EdgeInsets.symmetric(
                                  horizontal: width * 0.005,
                                  vertical: height * 0.01),
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.05,
                                vertical: width * 0.01,
                              ),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: primaryColor, width: 3),
                                borderRadius:
                                    BorderRadius.circular(width * 0.02),
                                gradient: LinearGradient(
                                  colors: [
                                    primaryColor,
                                    secondaryColor,
                                  ],
                                ),
                              ),
                              child: Text(
                                'Refer and Earn 1000 Real Cash',
                                style: TextStyle(
                                  fontSize: width * 0.04,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: width * 0.015),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: width * 0.3,
                              decoration: const BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color: Color(
                                      0xffD9D9D9,
                                    ),
                                  ),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AppImage.myReferrals,
                                  ),
                                  Text('My Referrals',
                                      style: TextStyle(
                                        fontSize: width * 0.04,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              width: width * 0.3,
                              decoration: const BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color: Color(
                                      0xffD9D9D9,
                                    ),
                                  ),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: width * 0.3,
                                    child: Image.asset(
                                      AppImage.myBonce,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Gap(width * 0.045),
                                  Text('My Bounce',
                                      style: TextStyle(
                                        fontSize: width * 0.04,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              width: width * 0.3,
                              decoration: const BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color: Color(
                                      0xffD9D9D9,
                                    ),
                                  ),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: width * 0.3,
                                    child: Image.asset(
                                      AppImage.marketingMaterial,
                                    ),
                                  ),
                                  Text('Marketing Materials',
                                      style: TextStyle(
                                        fontSize: width * 0.04,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: width * 0.03, vertical: width * 0.02),
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05,
                          vertical: width * 0.01,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width * 0.02),
                            border: Border.all(color: Colors.white, width: 3)),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Learn More',
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: width * 0.06,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' Refer and Earn',
                              style: TextStyle(
                                // color: Color(0xffA2D2DF),
                                color: Colors.white,
                                fontSize: width * 0.06,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: width * 0.01,
                          mainAxisSpacing: width * 0.01,
                        ),
                        itemBuilder: (context, index) =>
                            Image.asset(AppImage.aboutRef),
                        itemCount: 4,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
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
