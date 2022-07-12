import 'dart:ffi';

import 'package:flutter/material.dart';
import 'place.dart';

class ListPlaces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 350,
      ),
      child: ListView(
        children: <Widget>[
          Place(
              'assets/img/paisaje3.jpg',
              'El Angel',
              'Un lugar que nadie conocia y al que ahora va todo el mundo',
              'Cafeteria'),
          Place('assets/img/paisaje1.jpg', 'Carolinas',
              'La mejor opcion para gastar tu dinero', 'Restaurante'),
          Place('assets/img/paisaje2.jpg', 'Zona Cafe',
              'Un acogedor cafe del cual nadie sabe', 'Cafeteria'),
        ],
      ),
    );
  }
}
