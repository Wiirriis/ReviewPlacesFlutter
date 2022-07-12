import 'package:flutter/material.dart';
import 'package:flutter_app/gradient_back.dart';
import 'cardImage_list.dart';

class HeaderAppBar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
      GradientBack('Bienvenido'),
        CardImageList()
      ],
    );
  }
}