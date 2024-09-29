import 'package:flutter/material.dart';
import 'package:reffer_and_earn_1/screens/home_screen.dart';
import 'package:reffer_and_earn_1/screens/level_non_vip_screen.dart';
import 'package:reffer_and_earn_1/screens/level_two_vip_screen.dart';
import 'package:reffer_and_earn_1/screens/level_vip_screen.dart';
import 'package:reffer_and_earn_1/screens/my_card_network_screen.dart';
import 'package:reffer_and_earn_1/screens/my_level_screen.dart';
import 'package:reffer_and_earn_1/screens/refer_and_earn_screen.dart';
import 'package:reffer_and_earn_1/screens/your_account_manager_screen.dart';

import 'common/constants.dart';

class MyRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case referAndEarnScreen:
        return MaterialPageRoute(
          builder: (context) => const ReferAndEarnScreen(),
        );
      case myCardNetworkScreen:
        return MaterialPageRoute(
          builder: (context) => const MyCardNetworkScreen(),
        );

      case yourAccountManagerScreen:
        return MaterialPageRoute(
          builder: (context) => const YourAccountManagerScreen(),
        );
      case levelVipScreen:
        return MaterialPageRoute(
          builder: (context) => const LevelVipScreen(),
        );
      case levelNonVipScreen:
        return MaterialPageRoute(
          builder: (context) => const LevelNonVipScreen(),
        );
      case levelTwoVipScreen:
        return MaterialPageRoute(
          builder: (context) => const LevelTwoVipScreen(),
        );
      case myLevelScreen:
        return MaterialPageRoute(
          builder: (context) => const MyLevelScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
    }
  }
}
