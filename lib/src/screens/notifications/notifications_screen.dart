import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  static const routeName = '/notifications';

  NotificationsScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text("Notifications"),
      ),
    );
  }
}
