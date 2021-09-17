import 'package:challenge/Profile.dart';
import 'package:challenge/UI.dart';
import 'package:challenge/main.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    final tabPages = <Widget>[
      MedicalApp(),
      Challenge(),
    ];
    final bottomNavItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: "Setting",
      ),
    ];
    return Scaffold(
      body: tabPages[currentTab],
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: currentTab,
        selectedItemColor: Colors.purple,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            currentTab = index;
          });
        },
      ),
    );
  }
}
