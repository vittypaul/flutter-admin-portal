import 'package:flutter/material.dart';

import 'package:website/dashboard/hosting/widgets/hosting_table.dart';

class HostedPage extends StatelessWidget {
  const HostedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6,
              ),
              child: const Text(
                'Hosted',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView(
            children: const [
              HostingTable(),
            ],
          ),
        ),
      ],
    );
  }
}
