import 'package:lab10/manager/construction_site.dart';
import 'package:lab10/manager/worker_list.dart';
import 'package:flutter/material.dart';

class HomePageW extends StatefulWidget {
  const HomePageW({super.key});

  @override
  State<HomePageW> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageW> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
        child: Column(
          children: [
            Image.asset(
              'assets/worker.png',
              width: 175,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.brown[50],
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const WorkerList();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'Worker List',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Image.asset(
                  'assets/shovel.png',
                  width: 175,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.brown[50]),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const ConstructionSite();
                        },
                      ),
                    );
                  },
                  child: const Text('Construction Site',
                      style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ],
        ),
      ),

      // child: Material(
      //   color: Colors.brown[50],
      //   child: InkWell(
      //     splashColor: Colors.black26,
      //     onTap: () {},
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Ink.image(
      //           image: AssetImage('assets/shovel.png'),
      //           width: 200,
      //           height: 200,
      //           padding: EdgeInsets.all(8.0),
      //           fit: BoxFit.cover,
      //         ),
      //         SizedBox(
      //           height: 6,
      //         ),
      //         Text(
      //           'Working Site',
      //           style: TextStyle(fontSize: 20),
      //         ),
      //         Ink.image(
      //           image: AssetImage('assets/worker.png'),
      //           width: 200,
      //           height: 200,
      //           padding: EdgeInsets.all(8.0),
      //           fit: BoxFit.cover,
      //         ),
      //         SizedBox(
      //           height: 6,
      //         ),
      //         Text(
      //           'Working Site',
      //           style: TextStyle(fontSize: 20),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
