import 'package:flutter/material.dart';

import 'search_screen.dart';

class SearchNavigator extends StatelessWidget {
  SearchNavigator({required this.navigatorKey});

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
                case SearchScreen.routeName:
                  return SearchScreen();
                default:
                  return SearchScreen();
              }
            },
          );
        },
      ),
    );
  }
}
