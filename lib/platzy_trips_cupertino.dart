import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:programacion_avanzada/Place/ui/screens/home_trips.dart';
import 'package:programacion_avanzada/Place/ui/screens/search_trips.dart';
import 'package:programacion_avanzada/User/ui/screens/profile_trips.dart';

class PlatzyTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(backgroundColor: Color(0x33FFFFFF), items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.indigo),
                  title: Text("")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.indigo),
                  title: Text("")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.indigo),
                  title: Text("")),
            ]),
            tabBuilder: (BuildContext context, int index) {
              switch (index) {
                case 0:
                  return CupertinoTabView(
                    builder: (BuildContext context) => HomeTrips(),
                  );
                  break;
                case 1:
                  return CupertinoTabView(
                    builder: (BuildContext context) => SearchTrips(),
                  );
                  break;
                case 2:
                  return CupertinoTabView(
                    builder: (BuildContext context) => ProfileTrips(),
                  );
                  break;
              }
            }));
  }
}
