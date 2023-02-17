import 'package:flutter/material.dart';
import 'package:lab10/worker/home_page.dart';
import 'package:lab10/worker/noti.dart';
import 'package:lab10/worker/sensor_page.dart';

import '../Service/auth.dart';
// import '/home_page.dart';
// import '/sensor_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     theme: ThemeData(primarySwatch: Colors.blue),
  //   );
  // }

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  // final theme = const Color.fromARGB(255, 182, 37, 37);

  List<Widget> pages = const [HomePage(), SensorPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 182, 37, 37),
        title: const Text('SiteSentry'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  founsSignout();
                },
                child: const Icon(
                  Icons.logout,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color.fromARGB(255, 228, 228, 228),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.sensors), label: 'Sensor'),
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
