import 'package:flutter/material.dart';
import 'package:trips_app/card_vertical_list.dart';
import 'package:trips_app/gradient_profile.dart';

class Profile extends StatelessWidget {
  final user = Row(children: [
    CircleAvatar(
        backgroundImage: AssetImage("assets/img/florence.jpeg"), radius: 40),
    SizedBox(
      width: 20,
    ),
    Column(children: [
      Text("Florence Pugh",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16)),
      Text("florence@myluv.jon", style: TextStyle(color: Colors.white54))
    ], crossAxisAlignment: CrossAxisAlignment.start)
  ]);

  final buttons = Padding(
      padding: EdgeInsets.only(left: 5, top: 20),
      child: Row(children: [
        Container(
            child: SizedBox(
          width: 40,
          height: 40,
          child: FloatingActionButton(
              onPressed: () => {},
              backgroundColor: Colors.white54,
              child: Icon(Icons.bookmark_border_rounded,
                  color: Color(0xFF4268D3))),
        )),
        Container(
            child: SizedBox(
          width: 40,
          height: 40,
          child: FloatingActionButton(
              onPressed: () => {},
              backgroundColor: Colors.white54,
              child:
                  Icon(Icons.wallet_travel_rounded, color: Color(0xFF4268D3))),
        )),
        FloatingActionButton(
            onPressed: () => {},
            backgroundColor: Colors.white,
            child: Icon(Icons.add, color: Color(0xFF4268D3), size: 50)),
        Container(
            child: SizedBox(
          width: 40,
          height: 40,
          child: FloatingActionButton(
              onPressed: () => {},
              backgroundColor: Colors.white54,
              child:
                  Icon(Icons.mail_outline_rounded, color: Color(0xFF4268D3))),
        )),
        Container(
            child: SizedBox(
          width: 40,
          height: 40,
          child: FloatingActionButton(
              onPressed: () => {},
              backgroundColor: Colors.white54,
              child:
                  Icon(Icons.person_outline_rounded, color: Color(0xFF4268D3))),
        )),
      ], mainAxisAlignment: MainAxisAlignment.spaceAround));

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GradientProfile("Profile"),
      Positioned(
        top: 105,
        left: 20,
        width: 350,
        child: Column(
          children: [
            user,
            buttons,
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 175.0),
        child: CardVerticalList(),
      ),
    ]);
  }
}
