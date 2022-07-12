import 'package:flutter/material.dart';
import 'package:flutter_app/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Review('assets/img/gunter.jpg', 'Gunter', '1 review 4 photos', 'Te volviste reggaetonero?'),
        Review('assets/img/marceline.jpg', 'Marceline', '2 review 5 photos', 'Ay, por todos los cielos'),
        Review('assets/img/jake.jpg', 'Jake', '5 review 3 photos', 'Je je je je '),
        Review('assets/img/finn.jpg', 'Finn', '5 review 2 photos', 'Genial'),
        Review('assets/img/princesa.jpg', 'Bonny', '2 review 5 photos', 'Que lindo'),
        Review('assets/img/bmo.jpg', 'BMO', '5 review 3 photos', 'Siiiii BMO!')
      ],
    );
  }

}