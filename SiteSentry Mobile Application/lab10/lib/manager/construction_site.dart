import 'package:flutter/material.dart';
import 'package:lab10/manager/consWork.dart';
import 'package:lab10/manager/logout.dart';
import 'package:lab10/manager/sensortest.dart';
import 'package:lab10/manager/home_page.dart';

class ConstructionSite extends StatefulWidget {
  const ConstructionSite({super.key});

  @override
  State<ConstructionSite> createState() => _ConstructionSiteState();
}

class _ConstructionSiteState extends State<ConstructionSite> {
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
        title: const Text('Construction Sites'),
      ),
      body: Column(children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Construction Site List",
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
            children: [
              TableRow(children: [
                const Text(
                  "1",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "Site A",
                  style: TextStyle(fontSize: 15.0),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      iconColor: MaterialStatePropertyAll<Color>(Colors.black),
                      iconSize: MaterialStatePropertyAll(25)),
                  child: const Icon(Icons.open_in_new_sharp),
                  onPressed: () {},
                ),
              ]),
              TableRow(children: [
                const Text(
                  "2",
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "Site B",
                  style: TextStyle(fontSize: 15.0),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      iconColor: MaterialStatePropertyAll<Color>(Colors.black),
                      iconSize: MaterialStatePropertyAll(25)),
                  child: const Icon(Icons.open_in_new_sharp),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const ConsWork();
                        },
                      ),
                    );
                  },
                ),
              ]),
              TableRow(children: [
                const Text(
                  "3",
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "Site C",
                  style: TextStyle(fontSize: 15.0),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      iconColor: MaterialStatePropertyAll<Color>(Colors.black),
                      iconSize: MaterialStatePropertyAll(25)),
                  child: const Icon(Icons.open_in_new_sharp),
                  onPressed: () {},
                ),
              ]),
              TableRow(children: [
                const Text(
                  "4",
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "Site D",
                  style: TextStyle(fontSize: 15.0),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      iconColor: MaterialStatePropertyAll<Color>(Colors.black),
                      iconSize: MaterialStatePropertyAll(25)),
                  child: const Icon(Icons.open_in_new_sharp),
                  onPressed: () {},
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
