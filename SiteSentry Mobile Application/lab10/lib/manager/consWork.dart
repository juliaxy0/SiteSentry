import 'package:flutter/material.dart';
import 'package:lab10/manager/home_page.dart';
import 'package:lab10/manager/logout.dart';
import 'package:lab10/manager/sensortest.dart';

class ConsWork extends StatefulWidget {
  const ConsWork({super.key});

  @override
  State<ConsWork> createState() => ConsData();
}

class ConsData extends State<ConsWork> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePageW(),
    Sensor(),
    Logout(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Construction Sites B'),
      ),
      body: Column(children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Worker List",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ),
        const SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: Table(
            border: TableBorder.all(color: Colors.black, width: 0.5),
            columnWidths: const {
              0: FlexColumnWidth(0.5),
              1: FlexColumnWidth(4),
              2: FlexColumnWidth(1),
            },
            children: const [
              TableRow(children: [
                Text(
                  "1",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Ahmad Zaimirul bin Izzat",
                  style: TextStyle(fontSize: 15.0),
                ),
              ]),
              TableRow(children: [
                Text(
                  "2",
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Mohit A/L Kamaren",
                  style: TextStyle(fontSize: 15.0),
                ),
              ]),
              TableRow(children: [
                Text(
                  "3",
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Bryan Ong",
                  style: TextStyle(fontSize: 15.0),
                ),
              ]),
              TableRow(children: [
                Text(
                  "4",
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Amir Razak bin Kamarul",
                  style: TextStyle(fontSize: 15.0),
                ),
              ]),
              TableRow(children: [
                Text(
                  "5",
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Julia binti Fadhil",
                  style: TextStyle(fontSize: 15.0),
                ),
              ]),
              TableRow(children: [
                Text(
                  "6",
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Syahirah binti Zain",
                  style: TextStyle(fontSize: 15.0),
                ),
              ]),
              TableRow(children: [
                Text(
                  "7",
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Danish Hakimi bin Muhaimin",
                  style: TextStyle(fontSize: 15.0),
                ),
              ]),
            ],
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Floating Action Button');
          },
          child: const Icon(Icons.message_outlined)),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.person), label: 'person'),
          NavigationDestination(icon: Icon(Icons.sensors), label: 'sensor'),
          NavigationDestination(icon: Icon(Icons.logout), label: 'logout'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
