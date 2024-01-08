import 'package:flutter/material.dart';
import 'package:website/dashboard/hosted/widgets/hosted_table.dart';
import 'package:website/dashboard/hosting/widgets/hosting_table.dart';
import 'package:website/dashboard/overview/overview.dart';
import 'package:website/dashboard/style.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          // Large screen layout
          return const LargeScreen();
        } else {
          // Small screen layout
          return const SmallScreen();
        }
      },
    );
  }
}

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.asset(
              "assets/dash.png",
              height: 120,
              width: 110,
            ),
            const SizedBox(width: 10),
            const Text(
              " Dash ",
              style: TextStyle(
                color: lightGrey,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              icon: const Icon(Icons.settings),
              color: Colors.white,
              onPressed: () {
                // Navigate to settings screen
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              icon: const Icon(Icons.notifications),
              color: Colors.white,
              onPressed: () {
                // Navigate to notifications screen
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              backgroundColor: lightGrey,
              child: Text(
                "AP",
                style: TextStyle(color: light),
              ),
            ),
          ),
        ],
      ),
      body: Row(
        children: [
          Drawer(
            elevation: 5,
            child: ListView(
              children: [
                const SizedBox(height: 25),
                const ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.trending_up),
                      SizedBox(width: 10),
                      Text(
                        "Overview",
                        style: TextStyle(fontSize: 19, color: lightGrey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 25),
                ListTile(
                  title: const Row(
                    children: [
                      Icon(Icons.campaign),
                      SizedBox(width: 10),
                      Text(
                        "Live Events",
                        style: TextStyle(fontSize: 19, color: lightGrey),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HostingTable(),
                      ),
                    );
                  },
                ),
                const SizedBox(width: 25),
                ListTile(
                  title: const Row(
                    children: [
                      Icon(Icons.assignment_outlined),
                      SizedBox(width: 10),
                      Text(
                        "Hosted Events",
                        style: TextStyle(fontSize: 19, color: lightGrey),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HostedTable(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: const OverviewPage(),
            ),
          ),
        ],
      ),
    );
  }
}

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 222, 215, 215),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: const Text(
          " DashBoard ",
          style: TextStyle(
            color: lightGrey,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(
        elevation: 5,
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const ListTile(
              title: Row(
                children: [
                  Icon(Icons.trending_up),
                  SizedBox(width: 10),
                  Text(
                    "Overview",
                    style: TextStyle(fontSize: 17, color: lightGrey),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            ListTile(
              title: const Row(
                children: [
                  Icon(Icons.campaign),
                  SizedBox(width: 10),
                  Text(
                    "Live Events",
                    style: TextStyle(fontSize: 17, color: lightGrey),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HostingTable(),
                  ),
                );
              },
            ),
            const SizedBox(width: 10),
            ListTile(
              title: const Row(
                children: [
                  Icon(Icons.assignment_outlined),
                  SizedBox(width: 10),
                  Text(
                    "Hosted Events",
                    style: TextStyle(fontSize: 17, color: lightGrey),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HostedTable(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: const OverviewPage(),
    );
  }
}
