import 'package:flutter/material.dart';
import 'float_button.dart';
import 'package:flutter_app/place_card.dart';

class CardImage extends StatelessWidget {
  String pathImage = 'assets/img/paisaje1.jpg';

  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        PlaceCard(pathImage),
        FloationActionButtonGreen()
      ],
    );
  }

}