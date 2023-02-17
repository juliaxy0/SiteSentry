import 'package:flutter/material.dart';

class NotificationAlert extends StatefulWidget {
  const NotificationAlert({super.key});

  @override
  State<NotificationAlert> createState() => _NotificationAlertState();
}

class _NotificationAlertState extends State<NotificationAlert> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 182, 37, 37),
        title: const Text('Notifications'),
      ),

      body: listView(),

      // floatingActionButton: FloatingActionButton(
      //     tooltip: 'Notification',
      //     onPressed: () {
      //       debugPrint('Floating Action Button');
      //       Navigator.of(context)
      //           .push(MaterialPageRoute(builder: (BuildContext context) {
      //         return const NotificationAlert();
      //       }));
      //     },
      //     child: const Icon(Icons.notification_important)),
      //screen[currentPage];
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

  Widget listView() {
    return ListView.separated(
        itemBuilder: (context, index) {
          return listViewItem(index);
        },
        separatorBuilder: ((context, index) {
          return Divider(height: 0);
        }),
        itemCount: 2);
  }

  Widget listViewItem(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          prefixIcon(),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  message(index),
                  timeAndDate(index),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget prefixIcon() {
    return Container(
      height: 50,
      width: 50,
      padding: EdgeInsets.all(10),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
      child: Icon(
        Icons.notifications_active_outlined,
        size: 15,
        color: Colors.grey[700],
      ),
    );
  }

  Widget message(int index) {
    //double textSize = 14;
    return Container(
      child: RichText(
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        text: const TextSpan(
            text: 'New Message: ',
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                  text: 'High Rain Probability',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal))
            ]),
      ),
    );
  }

  Widget timeAndDate(int index) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('23-01-2021', style: TextStyle(fontSize: 10)),
          Text('2.30 pm', style: TextStyle(fontSize: 10)),
        ],
      ),
    );
  }
}
