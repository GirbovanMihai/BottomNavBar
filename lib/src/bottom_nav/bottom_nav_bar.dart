import 'package:flutter/material.dart';

import '../bottom_nav/tab_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar(
      {Key? key, required this.currentIndex, required this.onTap})
      : super(key: key);

  final int currentIndex;
  final ValueChanged<TabItem> onTap;

  static const _selectedBgColor = Colors.amber;
  static const _unselectedBgColor = Color(0xFFE65100);

  Color _getBgColor(int index) =>
      currentIndex == index ? _selectedBgColor : _unselectedBgColor;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => onTap(TabItem.values[index]),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          _buildItem(TabItem.home),
          _buildItem(TabItem.search),
          _buildItem(TabItem.notifications),
          _buildItem(TabItem.favorites),
        ]);
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    return BottomNavigationBarItem(
        icon: _buildIcon(TabItemData.allTabs[tabItem]!.icon, tabItem),
        title: Padding(
          padding: EdgeInsets.all(0),
        ));
  }

  Widget _buildIcon(IconData iconData, TabItem tabItem) => Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.pink,
              )),
              width: double.infinity,
              height: kBottomNavigationBarHeight,
              child: Material(
                color: _getBgColor(tabItem.index),
                child: InkWell(
                  child: Icon(iconData),
                  onTap: () => onTap(TabItem.values[tabItem.index]),
                ),
              ),
            ),
          ),
        ],
      );
}
