import 'package:flutter/material.dart';
import 'stars.dart';

class Review extends StatelessWidget {
  final String pathImage;
  final String name;
  final String details;
  final String comment;
  final int rating;

  Review(this.pathImage, this.name, this.details, this.comment, this.rating);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    final userName = Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Text(
          name,
          textAlign: TextAlign.left,
          style: TextStyle(fontFamily: "Lato", fontSize: 17.0),
        ));

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
      ),
    );

    final infoStars = Row(
      children: [
        userInfo,
        Container(
          margin: EdgeInsets.only(right: 3.0),
          child: Stars(rating),
        )
      ],
    );

    final userComment = Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Text(comment,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 13.0,
                fontWeight: FontWeight.w900)));

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, infoStars, userComment],
    );

    return Row(children: [photo, userDetails]);
  }
}
