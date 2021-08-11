import 'package:flutter/material.dart';

import 'bottom_navigation.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation',
      theme: ThemeData(
        primaryColor: Colors.amber[900],
      ),
      home: BottomNavigation(),
    );
  }
}
