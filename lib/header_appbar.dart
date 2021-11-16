import 'package:flutter/material.dart';
import 'gradient_back.dart';

class HeaderAppbar extends StatelessWidget {
  HeaderAppbar(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [GradientBack(title)],
    );
  }
}
