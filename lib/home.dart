import 'package:flutter/material.dart';
import 'description_place.dart';
import 'package:flutter_app/review_list.dart';
import 'package:flutter_app/review.dart';
import 'header_appbar.dart';

class Home extends StatelessWidget {
  String descriptionDummy =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.";
  Home();

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      ListView(
        children: <Widget>[
          DescriptionPlace("Carolinas", 5, descriptionDummy),
          ReviewList()
        ],
      ),
      HeaderAppBar()
    ]);
  }
}
