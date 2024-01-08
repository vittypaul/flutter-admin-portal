import 'package:flutter/material.dart';
import 'package:website/dashboard/overview/widgets/available_drivers_table.dart';

import 'package:website/dashboard/overview/widgets/overview_cards_large.dart';
import 'package:website/dashboard/overview/widgets/overview_cards_medium.dart';
import 'package:website/dashboard/overview/widgets/overview_cards_small.dart';
import 'package:website/dashboard/overview/widgets/revenue_section_large.dart';
import 'package:website/dashboard/overview/widgets/revenue_section_small.dart';
import 'package:website/dashboard/reponsiveness.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: ResponsiveWidget.isSmallScreen(context) ? 36 : 2,
              ),
              child: const Text(
                'Overview',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView(
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomSize(context))
                  const OverviewCardsMediumScreen()
                else
                  const OverviewCardsLargeScreen()
              else
                const OverviewCardsSmallScreen(),
              if (!ResponsiveWidget.isSmallScreen(context))
                const RevenueSectionLarge()
              else
                const RevenueSectionSmall(),
              const HostingEventsTable()
            ],
          ),
        ),
      ],
    );
  }
}
