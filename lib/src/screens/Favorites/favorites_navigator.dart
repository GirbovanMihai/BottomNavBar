import 'package:flutter/material.dart';

import 'favorites_screen.dart';

class FavoritesNavigator extends StatelessWidget {
  FavoritesNavigator({required this.navigatorKey});

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
                case FavoritesScreen.routeName:
                  return FavoritesScreen();
                default:
                  return FavoritesScreen();
              }
            },
          );
        },
      ),
    );
  }
}
