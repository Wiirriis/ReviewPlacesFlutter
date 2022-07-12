import 'dart:ffi';
import 'package:flutter/material.dart';
import 'icon_button.dart';

class ActionBar extends StatelessWidget {

  void onPressedFav(){

  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          top: 250,
          left: 14,
        ),
        height: 100,
        child: Row(
          children: <Widget>[
            ActionButton(true, Icons.turned_in_not, Color.fromRGBO(255, 255, 255, 1), Color(0xFF4268D3)),
            ActionButton(true, Icons.card_travel, Color.fromRGBO(255, 255, 255, 1), Color(0xFF4268D3)),
            ActionButton(false, Icons.add, Color.fromRGBO(255, 255, 255, 1), Color(0xFF4268D3)),
            ActionButton(true, Icons.mail_outline, Color.fromRGBO(255, 255, 255, 1), Color(0xFF4268D3)),
            ActionButton(true, Icons.person, Color.fromRGBO(255, 255, 255, 1), Color(0xFF4268D3)),
          ],
        ));
  }
}
