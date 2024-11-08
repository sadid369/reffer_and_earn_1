import 'package:flutter/material.dart';

import '../widgets/animated_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> pages = [
      'refer_and_earn_screen',
      'my_card_network_screen',
      'your_account_manager_screen',
      'level_vip_screen',
      'level_non_vip_screen',
      'level_two_vip_screen',
      'my_level_screen',
      'my_bonus'
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: pages
                    .map((e) => SizedBox(
                          width: 300,
                          height: 100,
                          child: AnimatedButton(
                            text: e,
                            onPressed: () {
                              Navigator.pushNamed(context, e);
                            },
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
