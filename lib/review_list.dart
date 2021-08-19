import 'package:flutter/material.dart';

class ReviewList extends StatelessWidget {
  final List<Widget> reviews;
  ReviewList(this.reviews);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: reviews,
    );
  }
}
