import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  bool mini = true;
  var icon = Icons.add;
  var backgroundColor = Colors.white;
  var iconColor = Color(0xFF4268D3);

  ActionButton(this.mini, this.icon, this.backgroundColor, this.iconColor);

  void onPressedButton() {}

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FloatingActionButton(
      backgroundColor: backgroundColor,
      mini: mini,
      onPressed: onPressedButton,
      child: Icon(
        icon,
        color: iconColor,
      ),
    ));
  }
}
