import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/screens/home/add_organization_admin.dart';
import 'package:flutter_application_1/src/screens/home/add_organization_company.dart';
import 'package:flutter_application_1/src/screens/home/home_screen.dart';

class HomeNavigator extends StatelessWidget {
  HomeNavigator({required this.navigatorKey});

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
                case HomeScreen.routeName:
                  return HomeScreen();
                case AddOrganizationCompany.routeName:
                  return AddOrganizationCompany();
                case AddOrganizationAdmin.routeName:
                  return AddOrganizationAdmin();
                default:
                  return HomeScreen();
              }
            },
          );
        },
      ),
    );
  }
}
