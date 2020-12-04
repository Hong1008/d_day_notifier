import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() {
  runApp(MyApp());
}

final _firebaseMessaging = FirebaseMessaging();

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FlutterLocalNotificationsPlugin notificationsPlugin;

  @override
  void initState() {
    super.initState();
    firebaseCloudMessagingListeners();
  }

  void firebaseCloudMessagingListeners() {

    _firebaseMessaging.getToken().then((token){

    });

    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {

      },
      onResume: (Map<String, dynamic> message) async {

      },
      onLaunch: (Map<String, dynamic> message) async {

      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var startDay = DateTime(2020, 10, 30);
    var dDay = DateTime.now().difference(startDay).inDays;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('디데이 알리미'),
        ),
        body: Center(
          child: Text(
            'D+$dDay',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ),
    );
  }
}
