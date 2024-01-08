import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:website/dashboard/custom_text.dart';
import 'package:website/dashboard/style.dart';

class HostingEventsTable extends StatelessWidget {
  const HostingEventsTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> eventData = [
      {
        'eventName': 'Hackathon',
        'collegeName': "St.Peter's Engineering College",
        'participants': 150,
      },
      {
        'eventName': 'Tech Fest',
        'collegeName': "ABC Institute of Technology",
        'participants': 120,
      },
      {
        'eventName': 'Aquilla',
        'collegeName': "St.peter's Engineering College",
        'participants': 120280,
      },
      {
        'eventName': 'Cultural Events',
        'collegeName': "MLRIT Institute of Technology",
        'participants': 500,
      }
      // Add more event data as needed
    ];

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: active.withOpacity(.4), width: .5),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 6),
            color: lightGrey.withOpacity(.1),
            blurRadius: 12,
          )
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              CustomText(
                text: "Conducted Events",
                color: lightGrey,
                weight: FontWeight.bold,
              ),
            ],
          ),
          SizedBox(
            height: (56 * (eventData.length + 1)) + 40, // +1 for heading row
            child: DataTable2(
              columnSpacing: 12,
              dataRowHeight: 56,
              headingRowHeight: 40,
              horizontalMargin: 12,
              minWidth: 300,
              columns: [
                DataColumn2(
                  label: SizedBox(
                    width: 150, // Event Name column width
                    child: Text("Event Name"),
                  ),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: SizedBox(
                    width: 200, // College Name column width
                    child: Text('College Name'),
                  ),
                ),
                DataColumn(
                  label: SizedBox(
                    width: 100, // Participants column width
                    child: Text('Participants'),
                  ),
                ),
              ],
              rows: List<DataRow>.generate(
                eventData.length,
                (index) => DataRow(
                  cells: [
                    DataCell(CustomText(text: eventData[index]['eventName'])),
                    DataCell(CustomText(text: eventData[index]['collegeName'])),
                    DataCell(CustomText(
                        text: eventData[index]['participants'].toString())),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
