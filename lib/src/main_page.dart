import 'package:flutter/material.dart';

import 'bottom_nav/bottom_nav_bar.dart';
import 'bottom_nav/tab_item.dart';
import 'screens/Favorites/favorites_navigator.dart';
import 'screens/home/home_navigator.dart';
import 'screens/notifications/notifications_navigator.dart';
import 'screens/search/search_navigator.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<MainPage> {
  TabItem _currentTab = TabItem.home;

  final _navigatorKeys = {
    TabItem.home: GlobalKey<NavigatorState>(),
    TabItem.search: GlobalKey<NavigatorState>(),
    TabItem.notifications: GlobalKey<NavigatorState>(),
    TabItem.favorites: GlobalKey<NavigatorState>(),
  };

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab)
      // pop to first route
      _navigatorKeys[_currentTab]!
          .currentState!
          .popUntil((route) => route.isFirst);
    else
      setState(() => _currentTab = tabItem);
  }

  Future<bool> _systemBackButtonPressed() async {
    final isFirstRouteInCurrentTab =
        !await _navigatorKeys[_currentTab]!.currentState!.maybePop();
    if (isFirstRouteInCurrentTab) {
      if (_currentTab != TabItem.home) {
        _selectTab(TabItem.home);
        return false;
      }
    }
    // let system handle back button if we're on the first route
    return isFirstRouteInCurrentTab;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _systemBackButtonPressed,
      child: Scaffold(
        body: SafeArea(
          top: false,
          /*IndexedStack preserve the state of the different sections*/
          child: IndexedStack(
            index: _currentTab.index,
            children: _getNavigators,
          ),
          //child: _getNavigator(_currentTab),
        ),
        bottomNavigationBar: BottomNavBar(
          currentIndex: _currentTab.index,
          onTap: _selectTab,
        ),
      ),
    );
  }

  List<Widget> get _getNavigators {
    return [
      HomeNavigator(
        navigatorKey: _navigatorKeys[TabItem.home],
      ),
      SearchNavigator(
        navigatorKey: _navigatorKeys[TabItem.search],
      ),
      NotificationsNavigator(
        navigatorKey: _navigatorKeys[TabItem.notifications],
      ),
      FavoritesNavigator(
        navigatorKey: _navigatorKeys[TabItem.favorites],
      ),
    ];
  }

  // Widget _getNavigator(TabItem tabItem) {
  //   switch (tabItem) {
  //     case TabItem.home:
  //       return HomeNavigator(navigatorKey: _navigatorKeys[TabItem.home]);
  //     case TabItem.search:
  //       return SearchNavigator(navigatorKey: _navigatorKeys[TabItem.search]);
  //     case TabItem.notifications:
  //       return NotificationsNavigator(
  //           navigatorKey: _navigatorKeys[TabItem.notifications]);
  //     case TabItem.favorites:
  //       return FavoritesNavigator(
  //           navigatorKey: _navigatorKeys[TabItem.favorites]);
  //   }
  // }
}
