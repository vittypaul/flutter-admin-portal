import 'package:flutter/material.dart';
import 'info_card_small.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 200,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Hosting Events",
            value: "9",
            onTap: () {},
            isActive: true,
          ),
          SizedBox(
            height: width / 54,
          ),
          InfoCardSmall(
            title: "Hosted Events",
            value: "17",
            onTap: () {},
          ),
          SizedBox(
            height: width / 54,
          ),
        ],
      ),
    );
  }
}
