import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  final int stars;

  Stars(this.stars);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: starsRow(stars),
    );
  }

  List<Widget> starsRow(int stars) {
    List<Widget> starsList = [];
    for (int i = 0; i < stars; i++) {
      starsList.add(star(true));
    }
    for (int i = 0; i < 5 - stars; i++) {
      starsList.add(star(false));
    }
    return starsList;
  }

  Widget star(bool full) {
    return Icon(full ? Icons.star : Icons.star_border,
        color: Color(0xFFf2C611));
    //Icon(Icons.star_half);
  }
}
