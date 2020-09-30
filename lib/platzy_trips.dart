import 'package:flutter/material.dart';
import 'package:programacion_avanzada/Place/ui/screens/home_trips.dart';
import 'package:programacion_avanzada/Place/ui/screens/search_trips.dart';
import 'package:programacion_avanzada/User/ui/screens/profile_trips.dart';

class PlatzyTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _PlatzyTrips();
  }
}

class _PlatzyTrips extends State<PlatzyTrips> {
  int indexTap = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetsChildren = [
      HomeTrips(),
      SearchTrips(),
      ProfileTrips()
    ];
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white, //es el color de la barra
          primaryColor: Colors.purple, //es el color de los iconos
        ), //la personalizacion
        child: BottomNavigationBar(
            onTap: onTapTapped, //le pasa automaticamente el indice
            currentIndex:
                indexTap, //le decimos que indice tiene, para que sepa que mostrar
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("Home")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), title: Text("Search")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text("Person")),
            ]),
      ),
    );
  }

  void onTapTapped(int index) {
    //este metodo sirve para identificar que icono se selecciono
    setState(() {
      indexTap = index;
    });
  }
}
