// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CoinCard extends StatelessWidget {
  final String image;
  final String diamonds;
  final String price;
  final String mrp;
  const CoinCard({
    super.key,
    required this.image,
    required this.diamonds,
    required this.price,
    required this.mrp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(image),
          Row(
            children: [
              // Image.asset(AppImage.diamond),
            ],
          )
        ],
      ),
    );
  }
}
