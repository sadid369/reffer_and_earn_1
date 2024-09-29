import 'package:flutter/material.dart';
import 'package:reffer_and_earn_1/my_routes.dart';

import 'common/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Balance & Wallet',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: MyRoutes.generateRoute,
      initialRoute: homeScreen,
    );
  }
}
