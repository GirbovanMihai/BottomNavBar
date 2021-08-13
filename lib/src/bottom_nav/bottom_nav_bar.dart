import 'package:flutter/material.dart';

import '../bottom_nav/tab_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar(
      {Key? key, required this.currentIndex, required this.onTap})
      : super(key: key);

  final int currentIndex;
  final ValueChanged<TabItem> onTap;

  static const _selectedBgColor = Color(0xFF23A52B);
  static const _unselectedBgColor = Color(0xFF41B649);

  Color _getBgColor(int index) =>
      currentIndex == index ? _selectedBgColor : _unselectedBgColor;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _bottomAppBarItem(TabItem.home),
          SizedBox(width: 10.0),
          _bottomAppBarItem(TabItem.search),
          SizedBox(width: 10.0),
          _bottomAppBarItem(TabItem.notifications),
          SizedBox(width: 10.0),
          _bottomAppBarItem(TabItem.favorites),
        ],
      ),
    );
  }

  Widget _bottomAppBarItem(TabItem tabItem) {
    TabItemData tabItemData = TabItemData.allTabs[tabItem]!;
    return Tooltip(
      message: tabItemData.label,
      child: InkWell(
        onTap: () => onTap(tabItem),
        child: Container(
          color: _getBgColor(tabItem.index),
          width: 68.0,
          height: kBottomNavigationBarHeight,
          child: Icon(
            tabItemData.icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
