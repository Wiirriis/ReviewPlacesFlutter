import 'package:flutter/material.dart';
import '../gradient_back.dart';
import './user_info.dart';
import 'action_bar.dart';
import 'place.dart';
import 'list_places.dart';

class Profile extends StatelessWidget{

  Profile();

  @override
  Widget build(BuildContext context) {

    return Stack(children: <Widget>[
      GradientBack('Profile', 500.0),
      UserInfo(),
      ActionBar(),
      ListPlaces(),
    ]);
  }

}