import 'package:flutter/material.dart';
import 'package:trips_app/floating_action_button_green.dart';
import 'package:trips_app/place_card.dart';

class CardImageProfile extends StatelessWidget {
  final String pathImage;

  CardImageProfile(this.pathImage);

  @override
  Widget build(BuildContext context) {
    final card = Container(
        height: 225.0,
        width: 350.0,
        margin: EdgeInsets.only(top: 60.0),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(pathImage)),
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0))
            ]));

    return Stack(
      //alignment: Alignment(0.9, 1.1),
      alignment: Alignment(0.05, 1.2),
      children: [
        card,
        PlaceCard(),
        //FloatingActionButtonGreen()
      ],
    );
  }
}
