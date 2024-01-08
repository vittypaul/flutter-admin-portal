import 'package:flutter/material.dart';
import 'package:website/dashboard/hosted/widgets/hosted_table.dart';

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
              child: Text(
                'Hosted', // Replace with your desired text
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
              HostedTable(),
            ],
          ),
        ),
      ],
    );
  }
}
