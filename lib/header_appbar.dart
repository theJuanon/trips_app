import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'card_image_list.dart';

class HeaderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [GradientBack("Bienvenido"), CardImageList()],
    );
  }
}
