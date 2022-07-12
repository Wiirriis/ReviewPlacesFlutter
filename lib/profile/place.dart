import 'package:flutter/material.dart';
import 'package:flutter_app/place_card.dart';
import 'place_info.dart';

class Place extends StatelessWidget {
  String pathImage = 'assets/img/paisaje3.jpg';
  String placeName = 'Carolinas Restaurant';
  String placeInfoName = 'Un lugar donde perderas 2 cosas: el hambre y el dinero';
  String placeDescriptionName = 'Restaurante y cafeteria';
  double marginTop = 0.0;
  double marginLeft = 0.0;

  Place(this.pathImage,this.placeName, this.placeInfoName, this.placeDescriptionName);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 8,
        bottom: 48
      ),
      child: Stack(
      alignment: Alignment(0.2, 1.5),
      children: <Widget>[
        PlaceCard(pathImage, 250, 375, marginTop, marginLeft),
        PlaceInfo(placeName, placeInfoName, placeDescriptionName),
      ],
    ),
    );
  }
}
