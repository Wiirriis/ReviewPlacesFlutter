import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final avatar = Container(
      //margin: EdgeInsets.only(top: 150.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage('assets/img/gunter.jpg'),
              fit:BoxFit.cover
          )
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 8, top: 8),
      child: Row(
        children: <Widget>[
          Text(
            'Gunter',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontFamily: 'Lato'
            ),
          )
        ],
      ),
    ); 

    final userMail = Container(
      margin: EdgeInsets.only(left: 8, top: 8),
      child: Row(
        children: <Widget>[
          Text(
            'reggaeton3.0@gmail.com',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.white38,
                fontFamily: 'Lato'
            ),
          )
        ],
      ),
    );


    final userInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userMail,
      ],
    );

    final user = Container(
      margin: EdgeInsets.only(top: 160, left: 18),
      height: 100,
      child: Row(
        children: <Widget>[
          avatar,
          userInfo,
        ],
      ),
    );

    return user;
  }
}