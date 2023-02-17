import 'package:flutter/material.dart';
import 'package:lab10/manager/home_page.dart';
import 'package:lab10/manager/logout.dart';
import 'package:lab10/manager/sensortest.dart';

class WorkerList extends StatefulWidget {
  const WorkerList({super.key});

  @override
  State<WorkerList> createState() => _WorkerListState();
}

class _WorkerListState extends State<WorkerList> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Worker List'),
      ),
      body: Column(children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Employee Table",
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
              TableRow(
                children: [
                  const Text(
                    "1",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "Mohit A/L Kamaren",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PopupMenuButton(
                        itemBuilder: (context) => [
                              PopupMenuItem(
                                child: Row(
                                  children: const [
                                    Text('Site A'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: const [
                                    Text('Site B'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: const [
                                    Text('Site C'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: const [
                                    Text('Site D'),
                                  ],
                                ),
                              ),
                            ],
                        child: const Icon(Icons.assignment_add)),

                    //    child: ElevatedButton(
                    //   style: const ButtonStyle(
                    //       backgroundColor: MaterialStatePropertyAll(Colors.white),
                    //       iconColor:
                    //           MaterialStatePropertyAll<Color>(Colors.black),
                    //       iconSize: MaterialStatePropertyAll(25)),
                    //   child: const Icon(Icons.assignment_add),
                    //   onPressed: () {},
                    // ),
                  ),
                ],
              ),
              TableRow(children: [
                const Text(
                  "2",
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "Ankit",
                  style: TextStyle(fontSize: 15.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PopupMenuButton(
                      itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Row(
                                children: const [
                                  Text('Site A'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: const [
                                  Text('Site B'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: const [
                                  Text('Site C'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: const [
                                  Text('Site D'),
                                ],
                              ),
                            ),
                          ],
                      child: const Icon(Icons.assignment_add)),
                ),
              ]),
              TableRow(children: [
                const Text(
                  "3",
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "Rakhi",
                  style: TextStyle(fontSize: 15.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PopupMenuButton(
                      itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Row(
                                children: const [
                                  Text('Site A'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: const [
                                  Text('Site B'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: const [
                                  Text('Site C'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: const [
                                  Text('Site D'),
                                ],
                              ),
                            ),
                          ],
                      child: const Icon(Icons.assignment_add)),
                ),
              ]),
              TableRow(children: [
                const Text(
                  "4",
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "Yash",
                  style: TextStyle(fontSize: 15.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PopupMenuButton(
                      itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Row(
                                children: const [
                                  Text('Site A'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: const [
                                  Text('Site B'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: const [
                                  Text('Site C'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: const [
                                  Text('Site D'),
                                ],
                              ),
                            ),
                          ],
                      child: const Icon(Icons.assignment_add)),
                ),
              ]),
              TableRow(children: [
                const Text(
                  "5",
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "Pragati",
                  style: TextStyle(fontSize: 15.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PopupMenuButton(
                      itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Row(
                                children: const [
                                  Text('Site A'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: const [
                                  Text('Site B'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: const [
                                  Text('Site C'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: const [
                                  Text('Site D'),
                                ],
                              ),
                            ),
                          ],
                      child: const Icon(Icons.assignment_add)),
                ),
              ]),
              TableRow(
                children: [
                  const Text(
                    "6",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "Teo Bong Teng",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PopupMenuButton(
                        itemBuilder: (context) => [
                              PopupMenuItem(
                                child: Row(
                                  children: const [
                                    Text('Site A'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: const [
                                    Text('Site B'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: const [
                                    Text('Site C'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: const [
                                    Text('Site D'),
                                  ],
                                ),
                              ),
                            ],
                        child: const Icon(Icons.assignment_add)),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const Text(
                    "6",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "Raziq bin Mohd",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PopupMenuButton(
                        itemBuilder: (context) => [
                              PopupMenuItem(
                                child: Row(
                                  children: const [
                                    Text('Site A'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: const [
                                    Text('Site B'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: const [
                                    Text('Site C'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: const [
                                    Text('Site D'),
                                  ],
                                ),
                              ),
                            ],
                        child: const Icon(Icons.assignment_add)),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const Text(
                    "7",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "Izrin bin Rafiq",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PopupMenuButton(
                        itemBuilder: (context) => [
                              PopupMenuItem(
                                child: Row(
                                  children: const [
                                    Text('Site A'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: const [
                                    Text('Site B'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: const [
                                    Text('Site C'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: const [
                                    Text('Site D'),
                                  ],
                                ),
                              ),
                            ],
                        child: const Icon(Icons.assignment_add)),
                  ),
                ],
              ),
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
