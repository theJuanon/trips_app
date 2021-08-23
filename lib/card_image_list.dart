import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350.0,
        child: ListView(
            padding: EdgeInsets.all(25.0),
            scrollDirection: Axis.horizontal,
            children: [
              CardImage("assets/img/sweden.png"),
              CardImage("assets/img/sweden2.jpeg"),
              CardImage("assets/img/sweden_mtn.jpeg"),
              CardImage("assets/img/sarek.jpeg"),
            ]));
  }
}
