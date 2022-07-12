import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget{
  String pathImage = 'assets/img/paisaje1.jpg';
  double height = 350;
  double width = 250;
  double marginTop = 80.0;
  double marginLeft = 20.0;
  PlaceCard(this.pathImage, [this.height = 350, this.width = 250, this.marginTop = 80.0, this.marginLeft = 20.0]);

  @override
  Widget build(BuildContext context) {
    final card = Container(
        height: height,
        width: width,
        margin: EdgeInsets.only(
          top: marginTop,
          left: marginLeft,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(pathImage)
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0)
              )
            ]
        )
    );
    return card;
  }

}