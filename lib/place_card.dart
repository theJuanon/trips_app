import 'package:flutter/material.dart';
import 'package:trips_app/floating_action_button_green.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: 250,
            child: Column(
              children: [
                Text("Sarek",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                Text("Ex ullamco consectetur non est occaecat non et quis.",
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
                Text("Steps 123, 123, 123",
                    style: TextStyle(
                        color: Colors.deepOrange, fontWeight: FontWeight.w600))
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 15,
                      offset: Offset(0.0, 7.0))
                ],
                color: Colors.white)),
        SizedBox(width: 30, height: 30, child: FloatingActionButtonGreen()),
      ],
      alignment: Alignment(0.9, 1.3),
    );
  }
}
