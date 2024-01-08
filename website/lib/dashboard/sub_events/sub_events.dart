import 'package:flutter/material.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;
import 'package:website/dashboard/hosted/widgets/event_hosted_page.dart';
import 'package:website/dashboard/style.dart';

class SubEventScreen extends StatelessWidget {
  const SubEventScreen({Key? key, required String eventName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Data for the table
    List<Map<String, dynamic>> subEventData = [
      {'subEventName': 'Basketball', 'participants': 100, 'collection': 5000},
      {'subEventName': 'Soccer', 'participants': 80, 'collection': 4000},
      {
        'subEventName': 'Cultural Event 1',
        'participants': 120,
        'collection': 6000
      },
      {
        'subEventName': 'Cultural Event 2',
        'participants': 90,
        'collection': 4500
      },
      {'subEventName': 'Hackathon', 'participants': 150, 'collection': 8000},
      {'subEventName': 'Seminars', 'participants': 60, 'collection': 3000},
      {'subEventName': 'Hackathon', 'participants': 150, 'collection': 8000},
      {'subEventName': 'Seminars', 'participants': 60, 'collection': 3000},
      // Add more sub-event data as needed
    ];

    // Data for the bar chart
    final List<charts.Series<dynamic, String>> seriesList = [
      charts.Series<Map<String, dynamic>, String>(
        id: 'Revenue',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(active),
        domainFn: (data, _) => data['subEventName'] as String,
        measureFn: (data, _) => data['collection'] as int,
        data: subEventData,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding:
                const EdgeInsets.only(right: 40.0, top: 14.0, bottom: 12.0),
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the other screen (replace YourOtherScreen with the actual screen)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EventHostedPage(
                            eventName: '',
                          )),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrangeAccent,
                fixedSize: const Size(120, 20),
              ),
              child: Text(
                'Button',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
        backgroundColor: lightGrey,
        title: const Text('Sub Events'),
        iconTheme: IconThemeData(color: Colors.grey), // Change back arrow color
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start, // Align to the left
              children: [
                // Table
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10.0), // Outer margins
                  width: 600.0, // Adjusted width of the table
                  decoration: BoxDecoration(
                    color: Colors.white, // Set background color to white
                    border: Border.all(color: Colors.grey), // Add border
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0.0), // Rounded top-left corner
                      bottomLeft:
                          Radius.circular(0.0), // Rounded bottom-left corner
                    ),
                  ),
                  child: DataTable(
                    columnSpacing: 40.0, // Adjusted spacing between columns
                    dataRowHeight: 40.0, // Adjusted row height
                    columns: const [
                      DataColumn(label: Text('Sub Event Name')),
                      DataColumn(label: Text('Total Participants')),
                      DataColumn(label: Text('Collection')),
                    ],
                    rows: subEventData.map((data) {
                      return DataRow(cells: [
                        DataCell(Text(
                          data['subEventName'].toString(),
                          style:
                              TextStyle(fontSize: 15.0), // Adjusted font size
                        )),
                        DataCell(Text(
                          data['participants'].toString(),
                          style:
                              TextStyle(fontSize: 15.0), // Adjusted font size
                        )),
                        DataCell(Text(
                          data['collection'].toString(),
                          style:
                              TextStyle(fontSize: 15.0), // Adjusted font size
                        )),
                      ]);
                    }).toList(),
                  ),
                ),
                const SizedBox(width: 100.0), // Increased space

                // Bar Chart with additional padding at the top
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    height: 370,
                    width: 600, // Adjusted width of the bar chart
                    decoration: BoxDecoration(
                      color: Colors.white, // Set background color to white
                      border: Border.all(color: Colors.grey), // Add border
                      borderRadius: BorderRadius.only(
                        topRight:
                            Radius.circular(0.0), // Rounded top-right corner
                        bottomRight:
                            Radius.circular(0.0), // Rounded bottom-right corner
                      ),
                    ),
                    child: charts.BarChart(
                      seriesList,
                      animate: true,
                      behaviors: [
                        charts.SeriesLegend(
                          position: charts.BehaviorPosition.bottom,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100.0), // Added space

            // Centered Button
            Container(
              width: 200.0,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {
                  // Add your button action here
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Set background color to green
                ),
                child: Text('Excel'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
