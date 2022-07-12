import 'package:flutter/material.dart';

class PlaceInfo extends StatelessWidget {
  String placeName = 'Carolinas Restaurant';
  String placeInfoName = 'Un lugar donde perderas 2 cosas: el hambre y el dinero';
  String placeDescriptionName = 'Restaurante y cafeteria';

  PlaceInfo(this.placeName, this.placeInfoName, this.placeDescriptionName);

  @override
  Widget build(BuildContext context) {
    final placeTitle = Container(
      margin: const EdgeInsets.only(left: 8, top: 8),
      child: Row(
        children: <Widget>[
          Text(
            '${placeName}',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 24.0, color: Colors.black, fontFamily: 'Lato'),
          )
        ],
      ),
    );

    final placeInfo = Flexible(
      child: Container(
      margin: const EdgeInsets.only(left: 8, top: 8),
      child: Text(
            '${placeInfoName}',
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 11.0, color: Colors.black38, fontFamily: 'Lato'),
          )
      ),
    );

    final placeDescription = Flexible(
      child: new Container(
      margin: const EdgeInsets.only(left: 8, top: 8),
      child: Text(
        '${placeDescriptionName}',
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 11.0, color: Colors.black38, fontFamily: 'Lato'),
          )
      ),
    );

    final placeSteps = Container(
      margin: const EdgeInsets.only(left: 8, top: 8),
      child: Row(
        children: const <Widget>[
          Text(
            'Steps 123,123',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 18.0, color: Colors.amber, fontFamily: 'Lato'),
          )
        ],
      ),
    );

    final card = Container(
      width: 300,
      height: 150,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[placeTitle, placeInfo, placeDescription, placeSteps],
        ),
      ),
    );

    return card;
  }
}
