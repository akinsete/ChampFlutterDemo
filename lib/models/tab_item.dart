import 'package:flutter/material.dart';

class TabItem {
  const TabItem(this.title, this.icon);
  final String title;
  final IconData icon;
}

const List<TabItem> getTabItems = <TabItem>[
  TabItem('Search', Icons.search),
  TabItem('Activity', Icons.local_activity),
  TabItem('Profiles', Icons.people),
  TabItem('Challenges', Icons.directions_run),
  TabItem('Meer', Icons.more_horiz)
];

