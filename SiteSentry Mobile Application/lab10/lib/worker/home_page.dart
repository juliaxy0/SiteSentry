import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            color: const Color.fromARGB(255, 185, 20, 20),
            child: const Center(
              child: Text('Welcome To SiteSentry!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.network(
            'https://cdn-icons-png.flaticon.com/512/360/360912.png',
            height: 200,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text('Mohit A/L Kamaren',
              style: TextStyle(fontSize: 20, color: Colors.teal)),
          const SizedBox(
            height: 10,
          ),
          const Text('Construction Worker',
              style: TextStyle(fontSize: 20, color: Colors.teal)),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
