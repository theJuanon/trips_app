import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile.dart';

class MainTrips extends StatefulWidget {
  const MainTrips({Key? key}) : super(key: key);

  @override
  _MainTripsState createState() => _MainTripsState();
}

class _MainTripsState extends State<MainTrips> {
  int indexTap = 0;

  final List<Widget> widgetChildren = [HomeTrips(), SearchTrips(), Profile()];

  void onTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetChildren[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
          child: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: indexTap,
              onTap: onTapped,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Profile')
              ])),
    );
  }
}
