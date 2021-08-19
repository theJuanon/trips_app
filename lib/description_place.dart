import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'stars.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final int stars;
  final String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final titleStars = Row(children: [
      Container(
        margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
        child: Text(
          namePlace,
          style: TextStyle(
              fontFamily: "Lato", fontSize: 30.0, fontWeight: FontWeight.w900),
          textAlign: TextAlign.left,
        ),
      ),
      Container(
        margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0,
        ),
        child: Stars(stars),
      )
    ]);

    final description = Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style: GoogleFonts.lato(
            textStyle: TextStyle(
                fontSize: 16.0,
                color: Color(0xFF56575a),
                fontWeight: FontWeight.bold)),
      ),
    );

    return Column(children: [titleStars, description]);
  }
}
