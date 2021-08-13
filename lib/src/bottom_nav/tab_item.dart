import 'package:flutter/material.dart';

enum TabItem {
  home,
  search,
  notifications,
  favorites,
}

class TabItemData {
  const TabItemData({
    required this.label,
    required this.icon,
  });

  final String label;
  final IconData icon;

  static const Map<TabItem, TabItemData> allTabs = {
    TabItem.home: TabItemData(
      label: 'Home',
      icon: Icons.home,
    ),
    TabItem.search: TabItemData(
      label: 'Search',
      icon: Icons.search,
    ),
    TabItem.notifications: TabItemData(
      label: 'Notifications',
      icon: Icons.notifications,
    ),
    TabItem.favorites: TabItemData(
      label: 'Favorites.',
      icon: Icons.star,
    ),
  };
}
