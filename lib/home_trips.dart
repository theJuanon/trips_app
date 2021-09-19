import 'package:flutter/material.dart';
import 'package:trips_app/review.dart';
import 'package:trips_app/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
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
    return Stack(
      children: [
        ListView(children: [
          DescriptionPlace("Sweden", 5, descriptionDummy),
          ReviewList(reviews)
        ]),
        HeaderAppbar()
      ],
    );
  }
}
