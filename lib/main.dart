import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FlutterLocalNotificationsPlugin notificationsPlugin;

  @override
  void initState() {
    super.initState();
    var androidSetting = AndroidInitializationSettings('');
    var iosSetting = IOSInitializationSettings();
    var initializationSettings = InitializationSettings(android: androidSetting, iOS: iosSetting);
    notificationsPlugin = FlutterLocalNotificationsPlugin();
    notificationsPlugin.initialize(initializationSettings);
  }

  @override
  Widget build(BuildContext context) {
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
        body: Container(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
