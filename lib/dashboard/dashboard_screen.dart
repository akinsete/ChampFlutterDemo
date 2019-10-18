import 'package:champ_app/activities/activities_screen.dart';
import 'package:champ_app/challenges/challenges_screen.dart';
import 'package:champ_app/meer/meer_screen.dart';
import 'package:champ_app/models/tab_item.dart';
import 'package:champ_app/profiles/profiles_screen.dart';
import 'package:champ_app/search/search_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return DashboardScreenState();
  }

}

class DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  List<Widget> getBottomNavScreens = [
    SearchScreen(),
    ActivitiesScreen(),
    ProfilesScreen(),
    ChallengesScreen(),
    MeerScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _currentIndex,
          children: getBottomNavScreens,
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          iconSize: 26,
          unselectedFontSize: 12,
          selectedFontSize: 13,
          selectedItemColor: Colors.indigo,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: getTabItems.map((TabItem tabItem) {
            return BottomNavigationBarItem(
                icon: Icon(tabItem.icon),
                backgroundColor: Colors.white,
                title: Text(tabItem.title)
            );
          }).toList(),
        ),
      ),
    );
  }
}