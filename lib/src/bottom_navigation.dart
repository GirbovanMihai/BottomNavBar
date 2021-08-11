import 'package:flutter/material.dart';

import 'bottom_nav/bottom_nav_bar.dart';
import 'screens/Favorites/favorites_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/notifications/notifications_screen.dart';
import 'screens/search/search_screen.dart';

/*test git*/
class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  static final List<Map<String, Widget>> _pages = [
    {'page': HomeScreen()},
    {'page': SearchScreen()},
    {'page': NotificationsScreen()},
    {'page': FavoritesScreen()},
  ];

  void _selectTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex]['page'],
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: _selectTab,
      ),
    );
  }
}
