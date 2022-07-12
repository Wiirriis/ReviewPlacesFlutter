import 'package:flutter/material.dart';

class FloationActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FloationActionButtonGreen();
  }

}

class _FloationActionButtonGreen extends State<FloationActionButtonGreen> {

  bool pressed = false;

  void onPressedFav(){
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    if(pressed == false){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('VA PISANDO EL MISMO PAVIMENTO')));
    } else if ( pressed == true) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('...recorriendo el barrio por completo')));
    }
    setState(() {
      pressed = !this.pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: 'Tocame',
      onPressed: onPressedFav,
      child: Icon(
        pressed ? Icons.favorite :
        Icons.favorite_border
      ),
    );
  }

}