import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = 'asset/img/people.jpg';
  String name = 'Marcos Perez';
  String details = '1 review 5 photos';
  String comment = 'Me encantan las pechuguitas';

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 13.0,
            color: Color(0xFFa3a5a7),
            fontWeight: FontWeight.w900),
      ),
    );

    final userInfo = Row(children: <Widget>[
      Container(
          margin: EdgeInsets.only(
            left: 20.0,
          ),
          child: Row(
            children: <Widget>[
              Text(
                details,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 13.0,
                    color: Color(0xFFa3a5a7)),
              )
            ],
          )),
    ]
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: 'Lato', fontSize: 17.0),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment,
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(pathImage), fit: BoxFit.cover)),
    );

    return Row(children: <Widget>[photo, userDetails]);
  }
}
