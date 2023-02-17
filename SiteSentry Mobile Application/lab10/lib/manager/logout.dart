import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab10/manager/manager.dart';
import 'package:lab10/rigester/Signin.dart';

import '../Service/auth.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/cons.jpeg'),
          Container(
              margin: const EdgeInsets.only(top: 50, bottom: 100),
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              child: const Center(
                child: Text('Are you sure you want to log out?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 22,
                    )),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 0, 136, 255)),
                      fixedSize: MaterialStateProperty.all(const Size(120, 50)),
                    ),
                    onPressed: () {
                      founsSignout();
                    },
                    child: const Text(
                      'Yes',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 133, 133, 133)),
                      fixedSize: MaterialStateProperty.all(const Size(120, 50)),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const Manager();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'No',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
