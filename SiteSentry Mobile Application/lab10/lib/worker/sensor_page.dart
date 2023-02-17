import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:lab10/main.dart';

class SensorPage extends StatefulWidget {
  const SensorPage({super.key});

  @override
  State<SensorPage> createState() => _SensorPageState();
}

class _SensorPageState extends State<SensorPage> {
  double _displayText = 0.0;
  double _displayText2 = 0.0;
  final _databaseHumidity = FirebaseDatabase.instance.ref();
  final _databaseTemp = FirebaseDatabase.instance.ref();
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _activateListeners();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                color: Colors.blue,
                icon: '@mipmap/ic_launcher',
              ),
            ));
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessageOpenedApp event was published!');
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        showDialog(
            context: context,
            builder: (_) {
              return AlertDialog(
                title: const Text("Info Title" /*notification.title*/),
                content: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(/*notification.body+*/ "info hee"),
                      ]),
                ),
              );
            });
      }
    });
  }

  void showNotificationHumidity() {
    setState(() {
      _counter++;
    });
    flutterLocalNotificationsPlugin.show(
        0,
        "Alert on Humidity for $_counter times",
        "Humidity Level are in danger zone! Please make sure you have enough water to keep you hydrated",
        NotificationDetails(
            android: AndroidNotificationDetails(channel.id, channel.name,
                importance: Importance.high,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher')));
  }

  void showNotificationTemperature() {
    setState(() {
      _counter++;
    });
    flutterLocalNotificationsPlugin.show(
        0,
        "Alert on Temperature for $_counter times",
        "Temperature Level are in danger zone! Please make sure you not expose long to the sunlight",
        NotificationDetails(
            android: AndroidNotificationDetails(channel.id, channel.name,
                importance: Importance.high,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher')));
  }

  void showNotificationBoth() {
    setState(() {
      _counter++;
    });
    flutterLocalNotificationsPlugin.show(
        0,
        "Alert on Humidity & Temperature for $_counter times",
        "Humidity and Temperature Level are in danger zone! Please stop constructtion for now until it become normal",
        NotificationDetails(
            android: AndroidNotificationDetails(channel.id, channel.name,
                importance: Importance.high,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher')));
  }

  void _activateListeners() {
    debugPrint("Im in here!");
    _databaseHumidity.child("DHT11/Humidity").onValue.listen((event) {
      final Object? description = event.snapshot.value;
      if (description != null) {
        setState(() {
          _displayText = double.parse('$description');
          if (_displayText < 50) {
            showNotificationHumidity();
          }
        });
      }
    });

    _databaseTemp.child("DHT11/Temperature").onValue.listen((event) {
      final Object? description2 = event.snapshot.value;
      if (description2 != null) {
        setState(() {
          _displayText2 = double.parse('$description2');
          if (_displayText2 < 15 || _displayText2 > 45) {
            showNotificationTemperature();
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              //Row for Sensor on site to set
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('Sensor on site: ', style: TextStyle(fontSize: 23)),
                  Text(
                    //Change site specialized by manager
                    'Site B🏗️',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  )
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 1.5,
              ),
              const SizedBox(
                height: 20,
              ),

              //This is for humidity level----------
              SizedBox(
                height: 250,
                width: 250,
                child: SfRadialGauge(
                  enableLoadingAnimation: true,
                  axes: <RadialAxis>[
                    RadialAxis(
                      minimum: 0,
                      maximum: 100,
                      interval: 5,
                      ranges: <GaugeRange>[
                        GaugeRange(
                          startValue: 0,
                          endValue: 40,
                          color: Colors.red,
                        ),
                        GaugeRange(
                          startValue: 40,
                          endValue: 75,
                          color: Colors.orange,
                        ),
                        GaugeRange(
                          startValue: 75,
                          endValue: 100,
                          color: Colors.green,
                        ),
                      ],
                      pointers: <GaugePointer>[
                        NeedlePointer(
                          value: _displayText,
                          enableAnimation: true,
                        )
                      ],
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                          widget: Text(
                            // ignore: prefer_interpolation_to_compose_strings
                            'Humidity Level: ' + _displayText.toString() + '%',
                            style: const TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          positionFactor: 1.1,
                          angle: 90,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.water, size: 60),
                ],
              ),

              //This is for Temperature-----------
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 250,
                width: 250,
                child: SfRadialGauge(
                  enableLoadingAnimation: true,
                  axes: <RadialAxis>[
                    RadialAxis(
                      minimum: 0,
                      maximum: 60,
                      interval: 5,
                      ranges: <GaugeRange>[
                        GaugeRange(
                          startValue: 0,
                          endValue: 15,
                          color: Colors.red,
                        ),
                        GaugeRange(
                          startValue: 15,
                          endValue: 25,
                          color: Colors.orange,
                        ),
                        GaugeRange(
                          startValue: 25,
                          endValue: 35,
                          color: Colors.green,
                        ),
                        GaugeRange(
                          startValue: 35,
                          endValue: 45,
                          color: Colors.orange,
                        ),
                        GaugeRange(
                          startValue: 45,
                          endValue: 60,
                          color: Colors.red,
                        ),
                      ],
                      pointers: <GaugePointer>[
                        NeedlePointer(
                          value: _displayText2,
                          enableAnimation: true,
                        )
                      ],
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                          widget: Text(
                            // ignore: prefer_interpolation_to_compose_strings
                            'Temperature Level: ' +
                                _displayText2.toString() +
                                '°C',
                            style: const TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          positionFactor: 1.1,
                          angle: 90,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //Text('' + _displayText, style: const TextStyle(fontSize: 17)),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.thermostat,
                    size: 60,
                  ),
                ],
              ),

              //This is for air quality--------------
              const SizedBox(
                height: 30,
              ),

              SizedBox(
                height: 250,
                width: 250,
                child: SfRadialGauge(
                  enableLoadingAnimation: true,
                  axes: <RadialAxis>[
                    RadialAxis(
                      minimum: 0,
                      maximum: 160,
                      interval: 20,
                      ranges: <GaugeRange>[
                        GaugeRange(
                          startValue: 0,
                          endValue: 40,
                          color: Colors.green,
                        ),
                        GaugeRange(
                          startValue: 40,
                          endValue: 80,
                          color: Colors.yellow,
                        ),
                        GaugeRange(
                          startValue: 80,
                          endValue: 120,
                          color: Colors.orange,
                        ),
                        GaugeRange(
                          startValue: 120,
                          endValue: 160,
                          color: Colors.red,
                        ),
                      ],
                      pointers: const <GaugePointer>[
                        NeedlePointer(
                          value: 40,
                          enableAnimation: true,
                        )
                      ],
                      annotations: const <GaugeAnnotation>[
                        GaugeAnnotation(
                          widget: Text(
                            'Air Quality Level: 40 AQI (Good)',
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          positionFactor: 1.1,
                          angle: 90,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //This is row for humidity
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.air_rounded, size: 60),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
