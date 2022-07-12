import 'package:flutter/material.dart';
import 'home.dart';
import 'profile/profile.dart';
import 'search.dart';

class Trips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Trips();
  }
}

class _Trips extends State<Trips> {
  int indexTab = 0;

  final List<Widget> pages = [
    Home(),
    Search(),
    Profile()
  ];

  void onTap(int index){
    setState(() {
      indexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: pages[indexTab],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
        ),
        child: BottomNavigationBar(
            currentIndex: indexTab,
            onTap: onTap,
            selectedItemColor: Colors.purple,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil')
        ]),
      ),
    );
  }
}
