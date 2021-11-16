import 'package:flutter/material.dart';
import 'package:trips_app/card_image_profile.dart';
import 'card_image.dart';

class CardVerticalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 850.0,
        child: ListView(
            //padding: EdgeInsets.all(25.0),
            scrollDirection: Axis.vertical,
            children: [
              CardImageProfile("assets/img/sweden.png"),
              CardImageProfile("assets/img/sweden2.jpeg"),
              CardImageProfile("assets/img/sweden_mtn.jpeg"),
              CardImageProfile("assets/img/sarek.jpeg"),
            ]));
  }
}
