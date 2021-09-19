import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'home_trips.dart';
import 'package:trips_app/search_trips.dart';
import 'profile.dart';

class CupertinoBar extends StatelessWidget {
  const CupertinoBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.indigo), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.indigo), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.indigo), label: '')
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                  builder: (BuildContext context) => HomeTrips());
            case 1:
              return CupertinoTabView(
                  builder: (BuildContext context) => SearchTrips());
            case 2:
              return CupertinoTabView(
                  builder: (BuildContext context) => Profile());
          }
          throw {};
        },
      ),
    );
  }
}
