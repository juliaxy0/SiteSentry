import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lab10/home/home.dart';
import 'dart:convert';
import 'package:lab10/manager/home_page.dart';
import 'package:lab10/manager/logout.dart';
import 'package:lab10/manager/sensortest.dart';
import '../Service/auth.dart';
import '../combonent/CustomButton.dart';
import 'notification.dart';

//MANAGER PUNYA UI (HOMEPAGE)

// void main() {
//   runApp(
//     const Manager(),
//   );
// }

class Manager extends StatelessWidget {
  const Manager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: const HomePageManager(),
    );
  }
}

class HomePageManager extends StatefulWidget {
  const HomePageManager({super.key});

  @override
  State<HomePageManager> createState() => _HomePageManagerState();
}

class _HomePageManagerState extends State<HomePageManager> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePageW(),
    Sensor(),
    Logout(),
  ];

  // final screen = [
  //   HomeUI();
  // ]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 182, 37, 37),
        title: const Text('SiteSentry'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.message_outlined)),
          // Image.asset(
          //   'assets/profile.png',
          //   width: 30.0,
          // )
        ],
      ),
      body: pages[currentPage],
      floatingActionButton: FloatingActionButton(
          tooltip: 'Notification',
          onPressed: () {
            debugPrint('Floating Action Button');
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return const NotificationAlert();
            }));
          },
          child: const Icon(Icons.notification_important)),
      //screen[currentPage];
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.sensors), label: 'sensor'),
          NavigationDestination(
            icon: Icon(Icons.logout),
            label: 'logout',
          ),
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
