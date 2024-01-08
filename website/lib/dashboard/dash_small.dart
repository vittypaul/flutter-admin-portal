// import 'package:flutter/material.dart';
// import 'package:website/dashboard/hosted/widgets/hosted_table.dart';
// import 'package:website/dashboard/hosting/widgets/hosting_table.dart';
// import 'package:website/dashboard/overview/overview.dart';
// import 'package:website/dashboard/style.dart';

// class SmallScreen extends StatelessWidget {
//   const SmallScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Color.fromARGB(255, 222, 215, 215),
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: () {
//             Scaffold.of(context).openDrawer();
//           },
//         ),
//         title: Text(
//           " DashBoard ",
//           style: TextStyle(
//             color: Colors.blue,
//             fontSize: 25,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: OverviewPage(),
//     );
//   }
// }

// class DrawerWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       elevation: 5,
//       child: ListView(
//         children: [
//           SizedBox(height: 20),
//           ListTile(
//             title: Row(
//               children: [
//                 Icon(Icons.trending_up),
//                 SizedBox(width: 10),
//                 Text(
//                   "Overview",
//                   style: TextStyle(fontSize: 20, color: lightGrey),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(width: 10),
//           ListTile(
//             title: Row(
//               children: [
//                 Icon(Icons.campaign),
//                 SizedBox(width: 10),
//                 Text(
//                   "Live Events",
//                   style: TextStyle(fontSize: 20, color: lightGrey),
//                 ),
//               ],
//             ),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => HostingTable(),
//                 ),
//               );
//             },
//           ),
//           const SizedBox(width: 10),
//           ListTile(
//             title: Row(
//               children: [
//                 Icon(Icons.assignment_outlined),
//                 SizedBox(width: 10),
//                 Text(
//                   "Hosted Events",
//                   style: TextStyle(fontSize: 20, color: lightGrey),
//                 ),
//               ],
//             ),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => HostedTable(),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
