import 'package:flutter/material.dart';
import 'package:flutter_app/review.dart';
import 'package:flutter_app/review_list.dart';
import 'button.dart';

    class DescriptionPlace extends StatelessWidget {

      String namePlace;
      int stars;
      String descriptionPlace;

      DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

    @override
    Widget build(BuildContext context) {

      final star_half = Container (
        margin: EdgeInsets.only(
            top: 323.0,
            right: 3.0
        ),

        child: Icon(
          Icons.star_half,
          color:  Color(0xFFf2C611),
        ),
      );

      final star_border = Container (
        margin: EdgeInsets.only(
            top: 323.0,
            right: 3.0
        ),

        child: Icon(
          Icons.star_border,
          color:  Color(0xFFf2C611),
        ),
      );

      final star = Container (
        margin: EdgeInsets.only(
            top: 323.0,
            right: 3.0
        ),

        child: Icon(
          Icons.star,
          color:  Color(0xFFf2C611),
        ),
      );

    final description = Container(
          margin: EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            descriptionPlace,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF56575a),
              overflow: TextOverflow.fade,
              fontFamily: "Lato"
            ),
          ),
    );

     final title_stars = Row (
       children: <Widget>[
         Container(
           margin: EdgeInsets.only(
             top: 320.0,
             left: 20.0,
             right: 20.0,
           ),
           child: Text(
             namePlace,
             style: TextStyle(
               fontSize: 30.0,
               fontWeight: FontWeight.w900,
               fontFamily: "Lato"
             ),
            textAlign: TextAlign.left,
           ),
         ),
         Row(
           children: <Widget>[
             star,
             star,
             star_half,
             star_border
           ],
         )
       ],
     );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        description,
        Button('Navegar'),
        //Review('assets/img/gunter.jpg', 'Gunter', '1 review 5 photos', 'Me gusta el reggaeton')
      ],
    );
  }
    }