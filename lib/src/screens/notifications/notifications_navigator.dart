import 'package:flutter/material.dart';

import 'notifications_screen.dart';

class NotificationsNavigator extends StatelessWidget {
  NotificationsNavigator({required this.navigatorKey});

  final GlobalKey<NavigatorState>? navigatorKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Navigator(
        key: navigatorKey,
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case NotificationsScreen.routeName:
                  return NotificationsScreen();
                default:
                  return NotificationsScreen();
              }
            },
          );
        },
      ),
    );
  }
}
