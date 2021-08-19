import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review.dart';
import 'review_list.dart';
import 'gradient_back.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final String descriptionDummy =
      "Lorem ipsum dolor sit amet, consecteuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pelientesque eu.\n\nPretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdient a.";

  final List<Widget> reviews = [
    Review("assets/img/florence.jpeg", "Florence Pugh", "1 Review",
        "I love Sweden", 4),
    Review("assets/img/viajera.jpeg", "Lavia Jera", "1 Review",
        "Best place on earth", 3),
    Review("assets/img/viajero.jpeg", "Elvia Jero", "1 Review",
        "Midsommar is magical", 3),
    Review("assets/img/chris.jpeg", "Christian Hughes", "1 Review",
        "I love swedish women!!!", 5),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: Stack(
        children: [
          ListView(children: [
            DescriptionPlace("Sweden", 5, descriptionDummy),
            ReviewList(reviews)
          ]),
          GradientBack()
        ],
      )),
    );
  }
}
